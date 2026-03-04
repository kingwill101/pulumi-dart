import 'package:pulumi/pulumi.dart' as pulumi;
import 'fargate_task_definition_args.dart';
import 'package:pulumi_aws/cloudwatch.dart' as pulumi_aws_cloudwatch;
import 'package:pulumi_aws/ecs.dart' as pulumi_aws_ecs;
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;

/// Create a TaskDefinition resource with the given unique name, arguments, and options.
/// Creates required log-group and task & execution roles.
/// Presents required Service load balancers if target group included in port mappings.
class FargateTaskDefinition extends pulumi.ComponentResource {
  /// Auto-created IAM task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  late final pulumi.Output<pulumi_aws_iam.Role?> executionRole;

  /// Computed load balancers from target groups specified of container port mappings.
  late final pulumi.Output<List<Map<String, dynamic>>?> loadBalancers;

  /// Auto-created Log Group resource for use by containers.
  late final pulumi.Output<pulumi_aws_cloudwatch.LogGroup?> logGroup;

  /// Underlying ECS Task Definition resource
  late final pulumi.Output<pulumi_aws_ecs.TaskDefinition?> taskDefinition;

  /// Auto-created IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final pulumi.Output<pulumi_aws_iam.Role?> taskRole;

  /// Creates a new [FargateTaskDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FargateTaskDefinition]. {@macro pulumi_ecs_fargate_task_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FargateTaskDefinition(
    String name, {
    FargateTaskDefinitionArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'awsx:ecs:FargateTaskDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
         remote: true,
       ) {
    executionRole = registerOutput<pulumi_aws_iam.Role?>('executionRole');
    loadBalancers = registerOutput<List<Map<String, dynamic>>?>(
      'loadBalancers',
    );
    logGroup = registerOutput<pulumi_aws_cloudwatch.LogGroup?>('logGroup');
    taskDefinition = registerOutput<pulumi_aws_ecs.TaskDefinition?>(
      'taskDefinition',
    );
    taskRole = registerOutput<pulumi_aws_iam.Role?>('taskRole');
  }
}
