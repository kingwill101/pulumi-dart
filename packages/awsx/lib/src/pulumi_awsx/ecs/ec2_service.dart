import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_service_args.dart';

/// Create an ECS Service resource for EC2 with the given unique name, arguments, and options.
/// Creates Task definition if `taskDefinitionArgs` is specified.
class EC2Service extends pulumi.ComponentResource {
  /// Underlying ECS Service resource
  late final pulumi.Output<dynamic> service;

  /// Underlying EC2 Task definition component resource if created from args
  late final pulumi.Output<dynamic> taskDefinition;

  EC2Service(
    String name, {
    EC2ServiceArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:ecs:EC2Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
        ) {
    this.service = registerOutput<dynamic>('service');
    this.taskDefinition = registerOutput<dynamic>('taskDefinition');
  }
}
