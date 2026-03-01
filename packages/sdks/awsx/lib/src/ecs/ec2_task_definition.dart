import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_task_definition_args.dart';
import 'package:pulumi_aws/cloudwatch.dart' as pulumi_aws_cloudwatch;
import 'package:pulumi_aws/ecs.dart' as pulumi_aws_ecs;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;

/// Create a TaskDefinition resource with the given unique name, arguments, and options.
/// Creates required log-group and task & execution roles.
/// Presents required Service load balancers if target group included in port mappings.
class EC2TaskDefinition extends pulumi.ComponentResource {
  /// Auto-created IAM task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  late final pulumi.Output<pulumi_aws_iam.Role?> executionRole;
  /// Computed load balancers from target groups specified of container port mappings.
  late final pulumi.Output<List<pulumi_aws_ecs.ServiceLoadBalancer>> loadBalancers;
  /// Auto-created Log Group resource for use by containers.
  late final pulumi.Output<pulumi_aws_cloudwatch.LogGroup?> logGroup;
  /// Underlying ECS Task Definition resource
  late final pulumi.Output<pulumi_aws_ecs.TaskDefinition> taskDefinition;
  /// Auto-created IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final pulumi.Output<pulumi_aws_iam.Role?> taskRole;

  /// Creates a new [EC2TaskDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EC2TaskDefinition]. {@macro pulumi_ecs_ec2_task_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EC2TaskDefinition(
    String name, {
    EC2TaskDefinitionArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:ecs:EC2TaskDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
        ) {
    this.executionRole = registerOutput<pulumi_aws_iam.Role?>('executionRole');
    this.loadBalancers = registerOutput<List<pulumi_aws_ecs.ServiceLoadBalancer>>('loadBalancers');
    this.logGroup = registerOutput<pulumi_aws_cloudwatch.LogGroup?>('logGroup');
    this.taskDefinition = registerOutput<pulumi_aws_ecs.TaskDefinition>('taskDefinition');
    this.taskRole = registerOutput<pulumi_aws_iam.Role?>('taskRole');
  }
}
