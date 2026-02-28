import 'package:pulumi/pulumi.dart' as pulumi;
import 'fargate_service_args.dart';

/// Create an ECS Service resource for Fargate with the given unique name, arguments, and options.
/// Creates Task definition if `taskDefinitionArgs` is specified.
class FargateService extends pulumi.ComponentResource {
  /// Underlying ECS Service resource
  late final pulumi.Output<dynamic> service;

  /// Underlying Fargate component resource if created from args
  late final pulumi.Output<dynamic> taskDefinition;

  /// Creates a new [FargateService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FargateService]. {@macro pulumi_ecs_fargate_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FargateService(
    String name, {
    FargateServiceArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'awsx:ecs:FargateService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    this.service = registerOutput<dynamic>('service');
    this.taskDefinition = registerOutput<dynamic>('taskDefinition');
  }
}
