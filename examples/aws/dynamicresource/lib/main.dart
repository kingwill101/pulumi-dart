import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_mysql/pulumi_mysql.dart' as mysql;

class DynamicResourceStack extends pulumi.Stack {
  late final pulumi.Output<String> databaseName;
  late final pulumi.Output<String> mysqlEndpoint;

  DynamicResourceStack() {
    final config = pulumi.Config();
    final adminName = config.require('sql-admin-name');
    final adminPassword = config.requireSecret('sql-admin-password');
    final userName = config.require('sql-user-name');
    final userPassword = config.requireSecret('sql-user-password');

    final region = aws.getRegionOutput();

    final appVpc = aws.ec2.Vpc(
      'app-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '172.31.0.0/16'.output(),
        enableDnsHostnames: true.output(),
      ),
    );

    final subnetA = aws.ec2.Subnet(
      'app-vpc-subnet',
      args: aws.ec2.SubnetArgs(
        cidrBlock: '172.31.0.0/20'.output(),
        availabilityZone: region.apply((r) => '${r?.name ?? ''}a'),
        vpcId: appVpc.id,
      ),
    );

    final subnetB = aws.ec2.Subnet(
      'extra-rds-subnet',
      args: aws.ec2.SubnetArgs(
        cidrBlock: '172.31.128.0/20'.output(),
        availabilityZone: region.apply((r) => '${r?.name ?? ''}b'),
        vpcId: appVpc.id,
      ),
    );

    final gateway = aws.ec2.InternetGateway(
      'app-gateway',
      args: aws.ec2.InternetGatewayArgs(vpcId: appVpc.id),
    );

    final routeTable = aws.ec2.RouteTable(
      'app-routetable',
      args: aws.ec2.RouteTableArgs(
        vpcId: appVpc.id,
        routes: [
          aws.ec2.RouteTableRoute(
            cidrBlock: '0.0.0.0/0'.output(),
            gatewayId: gateway.id,
          ),
        ].output(),
      ),
    );

    aws.ec2.MainRouteTableAssociation(
      'app-routetable-association',
      args: aws.ec2.MainRouteTableAssociationArgs(
        vpcId: appVpc.id,
        routeTableId: routeTable.id,
      ),
    );

    final securityGroup = aws.ec2.SecurityGroup(
      'security-group',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: appVpc.id,
        description: 'Enables MySQL access'.output(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.output(),
            fromPort: 3306.output(),
            toPort: 3306.output(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.output(),
            fromPort: 0.output(),
            toPort: 0.output(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
      ),
    );

    final subnetGroup = aws.rds.SubnetGroup(
      'app-database-subnetgroup',
      args: aws.rds.SubnetGroupArgs(subnetIds: [subnetA.id, subnetB.id].output()),
    );

    final mysqlServer = aws.rds.Instance(
      'mysql-server',
      args: aws.rds.InstanceArgs(
        engine: 'mysql'.output(),
        username: adminName.output(),
        password: adminPassword,
        instanceClass: 'db.t3.micro'.output(),
        allocatedStorage: 20.output(),
        skipFinalSnapshot: true.output(),
        publiclyAccessible: true.output(),
        dbSubnetGroupName: subnetGroup.id,
        vpcSecurityGroupIds: [securityGroup.id].output(),
      ),
    );

    final mysqlProvider = mysql.ProviderProvider(
      'mysql-provider',
      args: mysql.ProviderArgs(
        endpoint: mysqlServer.endpoint,
        username: adminName.output(),
        password: adminPassword,
      ),
    );

    final database = mysql.Database(
      'mysql-database',
      args: mysql.DatabaseArgs(name: 'votes-database'.output()),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    final dbUser = mysql.User(
      'mysql-standard-user',
      args: mysql.UserArgs(
        user: userName.output(),
        host: 'example.com'.output(),
        plaintextPassword: userPassword,
      ),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    mysql.Grant(
      'mysql-access-grant',
      args: mysql.GrantArgs(
        user: dbUser.user,
        host: dbUser.host,
        database: database.name,
        privileges: ['SELECT', 'UPDATE'].output(),
      ),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    databaseName = database.name;
    mysqlEndpoint = mysqlServer.address;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('databaseName', databaseName),
      pulumi.OutputProperty('mysqlEndpoint', mysqlEndpoint),
    ];
  }
}
