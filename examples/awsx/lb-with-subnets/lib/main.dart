import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class TsLbWithSubnetsStack extends pulumi.Stack {
  late final pulumi.Output<String?> url;

  TsLbWithSubnetsStack() {
    final vpc = awsx.ec2.Vpc('dev-vpc');
    final cluster = aws.ecs.Cluster('default-cluster');

    final lb = awsx.lb.ApplicationLoadBalancer(
      'nginx-lb',
      args: awsx.lb.ApplicationLoadBalancerArgs(
        subnetIds: vpc.publicSubnetIds.apply<List<String>>((ids) => ids ?? []),
      ),
    );

    awsx.ecs.FargateService(
      'my-service',
      args: awsx.ecs.FargateServiceArgs(
        cluster: cluster.arn,
        assignPublicIp: true.input(),
        networkConfiguration: aws.ecs
            .ServiceNetworkConfiguration(
              assignPublicIp: true.input(),
              subnets: vpc.publicSubnetIds.apply<List<String>>(
                (ids) => ids ?? [],
              ),
            )
            .input(),
        taskDefinitionArgs: awsx.ecs
            .FargateServiceTaskDefinition(
              container: awsx.ecs
                  .TaskDefinitionContainerDefinition(
                    image: 'nginx:latest'.input(),
                    name: 'nginx'.input(),
                    cpu: 512.input(),
                    memory: 128.input(),
                    essential: true.input(),
                    portMappings: [
                      awsx.ecs.TaskDefinitionPortMapping(
                        containerPort: 80.input(),
                        targetGroup: lb.defaultTargetGroup.apply((tg) => tg!),
                      ),
                    ].input(),
                  )
                  .input(),
            )
            .input(),
      ),
    );

    url = lb.loadBalancer.apply<String?>(
      (loadBalancer) => loadBalancer?.dnsName,
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
