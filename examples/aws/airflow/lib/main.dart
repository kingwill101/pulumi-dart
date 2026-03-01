import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class AirflowStack extends pulumi.Stack {
  late final pulumi.Output<String> postgresHost;
  late final pulumi.Output<String> redisHost;

  AirflowStack() {
    final config = pulumi.Config('airflow');
    final dbPassword = config.require('dbPassword');

    final vpc = aws.ec2.Vpc(
      'airflow-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.20.0.0/16',
        enableDnsHostnames: true,
        enableDnsSupport: true,
      ),
    );

    final subnetA = aws.ec2.Subnet(
      'airflow-subnet-a',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: '10.20.1.0/24',
        mapPublicIpOnLaunch: true,
      ),
    );
    final subnetB = aws.ec2.Subnet(
      'airflow-subnet-b',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: '10.20.2.0/24',
        mapPublicIpOnLaunch: true,
      ),
    );

    final securityGroup = aws.ec2.SecurityGroup(
      'airflow-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp',
            fromPort: 5432,
            toPort: 5432,
            cidrBlocks: ['10.20.0.0/16'],
          ),
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp',
            fromPort: 6379,
            toPort: 6379,
            cidrBlocks: ['10.20.0.0/16'],
          ),
        ],
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1',
            fromPort: 0,
            toPort: 0,
            cidrBlocks: ['0.0.0.0/0'],
          ),
        ],
      ),
    );

    final dbSubnets = aws.rds.SubnetGroup(
      'dbsubnets',
      args: aws.rds.SubnetGroupArgs(subnetIds: [subnetA.id, subnetB.id].output()),
    );

    final db = aws.rds.Instance(
      'postgresdb',
      args: aws.rds.InstanceArgs(
        engine: 'postgres',
        instanceClass: 'db.t3.micro',
        allocatedStorage: 20,
        dbSubnetGroupName: dbSubnets.id,
        vpcSecurityGroupIds: securityGroup.id.apply((id) => [id]),
        dbName: 'airflow',
        username: 'airflow',
        password: dbPassword,
        skipFinalSnapshot: true,
      ),
    );

    final cacheSubnets = aws.elasticache.SubnetGroup(
      'cachesubnets',
      args: aws.elasticache.SubnetGroupArgs(
        subnetIds: [subnetA.id, subnetB.id].output(),
      ),
    );

    final cacheCluster = aws.elasticache.Cluster(
      'cachecluster',
      args: aws.elasticache.ClusterArgs(
        engine: 'redis',
        nodeType: 'cache.t2.micro',
        numCacheNodes: 1,
        subnetGroupName: cacheSubnets.id,
        securityGroupIds: securityGroup.id.apply((id) => [id]),
      ),
    );

    aws.ecs.Cluster('airflow-ecs-cluster');

    postgresHost = db.endpoint.apply((e) => e.split(':').first);
    redisHost = cacheCluster.cacheNodes.apply(
      (nodes) => nodes.isNotEmpty ? nodes[0].address : '',
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('postgresHost', postgresHost),
      pulumi.OutputProperty('redisHost', redisHost),
    ];
  }
}
