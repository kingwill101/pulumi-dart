import 'package:pulumi/pulumi.dart';
import 'fargate_service_args.dart';

/// Create an ECS Service resource for Fargate with the given unique name, arguments, and options.
/// Creates Task definition if `taskDefinitionArgs` is specified.
class FargateService extends ComponentResource {
  /// Underlying ECS Service resource
  late final Output<dynamic> service;

  /// Underlying Fargate component resource if created from args
  late final Output<dynamic> taskDefinition;

  FargateService(
    String name, {
    FargateServiceArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:ecs:FargateService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.service = Output.createUnknown<dynamic>();
    this.taskDefinition = Output.createUnknown<dynamic>();
  }
}
