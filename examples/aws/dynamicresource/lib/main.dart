import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_mysql/pulumi_mysql.dart' as mysql;

class DynamicResourceStack extends pulumi.Stack {
  late final pulumi.Output<String> databaseName;
  late final pulumi.Output<String> mysqlEndpoint;

  DynamicResourceStack() {
    final config = pulumi.Config();
    final adminName = config.require('sql-admin-name');
    final adminPassword = config.require('sql-admin-password');
    final userName = config.require('sql-user-name');
    final userPassword = config.require('sql-user-password');

    final region = pulumi.output(
      aws.index.getRegion(aws.index.GetRegionArgs()),
    );

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
        availabilityZone: region.apply((r) => '${r.name}a'),
        vpcId: appVpc.id,
      ),
    );

    final subnetB = aws.ec2.Subnet(
      'extra-rds-subnet',
      args: aws.ec2.SubnetArgs(
        cidrBlock: '172.31.128.0/20'.output(),
        availabilityZone: region.apply((r) => '${r.name}b'),
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
        description: 'Enables MySQL access'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 3306.input(),
            toPort: 3306.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final subnetGroup = aws.rds.SubnetGroup(
      'app-database-subnetgroup',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: pulumi.InputList<String>([subnetA.id, subnetB.id]),
      ),
    );

    final mysqlServer = aws.rds.Instance(
      'mysql-server',
      args: aws.rds.InstanceArgs(
        engine: 'mysql'.output(),
        username: adminName.output(),
        password: adminPassword.input(),
        instanceClass: 'db.t3.micro'.output(),
        allocatedStorage: 20.output(),
        skipFinalSnapshot: true.output(),
        publiclyAccessible: true.output(),
        dbSubnetGroupName: subnetGroup.id,
        vpcSecurityGroupIds: pulumi.InputList<String>([securityGroup.id]),
      ),
    );

    final mysqlProvider = mysql.providers.Mysql(
      'mysql-provider',
      args: mysql.providers.ProviderArgs(
        endpoint: mysqlServer.endpoint.apply<String>((endpoint) => endpoint),
        username: adminName.output(),
        password: adminPassword.input(),
      ),
    );

    final database = mysql.index.Database(
      'mysql-database',
      args: mysql.index.DatabaseArgs(name: 'votes-database'.output()),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    final dbUser = mysql.index.User(
      'mysql-standard-user',
      args: mysql.index.UserArgs(
        user: userName.output(),
        host: 'example.com'.output(),
        plaintextPassword: userPassword.input(),
      ),
      options: pulumi.CustomResourceOptions(provider: mysqlProvider),
    );

    mysql.index.Grant(
      'mysql-access-grant',
      args: mysql.index.GrantArgs(
        user: dbUser.user,
        host: dbUser.host.apply<String>((host) => host ?? 'example.com'),
        database: database.name,
        privileges: ['SELECT', 'UPDATE'].input(),
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
