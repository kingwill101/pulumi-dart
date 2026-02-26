import 'package:pulumi/pulumi.dart';
import 'ec2_service_args.dart';

/// Create an ECS Service resource for EC2 with the given unique name, arguments, and options.
/// Creates Task definition if `taskDefinitionArgs` is specified.
class EC2Service extends ComponentResource {
  /// Underlying ECS Service resource
  late final Output<dynamic> service;

  /// Underlying EC2 Task definition component resource if created from args
  late final Output<dynamic> taskDefinition;

  EC2Service(
    String name, {
    EC2ServiceArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:ecs:EC2Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.service = Output.createUnknown<dynamic>();
    this.taskDefinition = Output.createUnknown<dynamic>();
  }
}
