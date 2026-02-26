import 'package:pulumi/pulumi.dart';
import 'fargate_task_definition_args.dart';

/// Create a TaskDefinition resource with the given unique name, arguments, and options.
/// Creates required log-group and task & execution roles.
/// Presents required Service load balancers if target group included in port mappings.
class FargateTaskDefinition extends ComponentResource {
  /// Auto-created IAM task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  late final Output<dynamic> executionRole;

  /// Computed load balancers from target groups specified of container port mappings.
  late final Output<List<Map<String, dynamic>>> loadBalancers;

  /// Auto-created Log Group resource for use by containers.
  late final Output<dynamic> logGroup;

  /// Underlying ECS Task Definition resource
  late final Output<dynamic> taskDefinition;

  /// Auto-created IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final Output<dynamic> taskRole;

  FargateTaskDefinition(
    String name, {
    FargateTaskDefinitionArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:ecs:FargateTaskDefinition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.executionRole = Output.createUnknown<dynamic>();
    this.loadBalancers = Output.createUnknown<List<Map<String, dynamic>>>();
    this.logGroup = Output.createUnknown<dynamic>();
    this.taskDefinition = Output.createUnknown<dynamic>();
    this.taskRole = Output.createUnknown<dynamic>();
  }
}
