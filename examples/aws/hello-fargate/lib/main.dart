import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class HelloFargateStack extends pulumi.Stack {
  late final pulumi.Output<String?> url;

  HelloFargateStack() {
    final cluster = aws.ecs.Cluster('cluster');
    final vpc = awsx.ec2.Vpc('vpc');

    final loadBalancer = awsx.lb.ApplicationLoadBalancer(
      'loadbalancer',
      args: awsx.lb.ApplicationLoadBalancerArgs(
        subnetIds: vpc.publicSubnetIds.apply<List<String>>((ids) => ids!),
      ),
    );

    final repo = awsx.ecr.Repository(
      'repo',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.input()),
    );

    final image = awsx.ecr.Image(
      'image',
      args: awsx.ecr.ImageArgs(
        repositoryUrl: repo.url.apply<String>((url) => url!),
        context: './app'.input(),
        platform: 'linux/amd64'.input(),
      ),
    );

    awsx.ecs.FargateService(
      'service',
      args: awsx.ecs.FargateServiceArgs(
        cluster: cluster.arn,
        desiredCount: 5.input(),
        networkConfiguration: aws.ecs
            .ServiceNetworkConfiguration(
              assignPublicIp: true.input(),
              subnets: vpc.publicSubnetIds.apply<List<String>>((ids) => ids!),
            )
            .input(),
        taskDefinitionArgs: awsx.ecs
            .FargateServiceTaskDefinition(
              container: awsx.ecs
                  .TaskDefinitionContainerDefinition(
                    name: 'service-container'.input(),
                    image: image.imageUri.apply<String>((uri) => uri!),
                    cpu: 102.input(),
                    memory: 50.input(),
                    essential: true.input(),
                    portMappings: [
                      awsx.ecs.TaskDefinitionPortMapping(
                        containerPort: 80.input(),
                      ),
                    ].input(),
                  )
                  .input(),
            )
            .input(),
      ),
    );

    url = loadBalancer.loadBalancer.apply<String?>((lb) => lb?.dnsName);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
