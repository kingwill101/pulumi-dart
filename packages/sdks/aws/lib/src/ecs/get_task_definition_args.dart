// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_task_definition_get_task_definition_args_doc}
/// Arguments for getTaskDefinition.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_task_definition_get_task_definition_args_doc}
class GetTaskDefinitionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Family for the latest ACTIVE revision, family and revision (family:revision) for a specific revision in the family, the ARN of the task definition to access to.
  final pulumi.Input<String> taskDefinition;

  /// Creates a new [GetTaskDefinitionArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [taskDefinition] Family for the latest ACTIVE revision, family and revision (family:revision) for a specific revision in the family, the ARN of the task definition to access to.
  const GetTaskDefinitionArgs({
    this.region,
    required this.taskDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'taskDefinition': taskDefinition,
    };
  }

  factory GetTaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskDefinition: pulumi.Input.fromValue(map['taskDefinition'] as String),
    );
  }
}

