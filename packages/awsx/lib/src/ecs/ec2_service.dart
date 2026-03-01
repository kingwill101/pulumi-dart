import 'package:pulumi/pulumi.dart' as pulumi;
import 'ec2_service_args.dart';
import 'package:pulumi_aws/ecs.dart' as pulumi_aws_ecs;

/// Create an ECS Service resource for EC2 with the given unique name, arguments, and options.
/// Creates Task definition if `taskDefinitionArgs` is specified.
class EC2Service extends pulumi.ComponentResource {
  /// Underlying ECS Service resource
  late final pulumi.Output<pulumi_aws_ecs.Service> service;

  /// Underlying EC2 Task definition component resource if created from args
  late final pulumi.Output<pulumi_aws_ecs.TaskDefinition?> taskDefinition;

  /// Creates a new [EC2Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EC2Service]. {@macro pulumi_ecs_ec2_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    this.service = registerOutput<pulumi_aws_ecs.Service>('service');
    this.taskDefinition = registerOutput<pulumi_aws_ecs.TaskDefinition?>(
      'taskDefinition',
    );
  }
}
