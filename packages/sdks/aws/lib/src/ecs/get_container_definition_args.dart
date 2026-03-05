// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_container_definition_get_container_definition_args_doc}
/// Arguments for getContainerDefinition.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_container_definition_get_container_definition_args_doc}
class GetContainerDefinitionArgs {
  /// Name of the container definition
  final pulumi.Input<String> containerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the task definition which contains the container
  final pulumi.Input<String> taskDefinition;

  /// Creates a new [GetContainerDefinitionArgs].
  /// [containerName] Name of the container definition
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [taskDefinition] ARN of the task definition which contains the container
  GetContainerDefinitionArgs({
    required this.containerName,
    this.region,
    required this.taskDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'region': ?region,
      'taskDefinition': taskDefinition,
    };
  }

  factory GetContainerDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerDefinitionArgs(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskDefinition: pulumi.Input.fromValue(map['taskDefinition'] as String),
    );
  }
}

