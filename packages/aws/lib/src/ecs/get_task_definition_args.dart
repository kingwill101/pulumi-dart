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
  GetTaskDefinitionArgs({String? region, required String taskDefinition})
    : region = pulumi.Input.asOptionalInput<String>(region),
      taskDefinition = pulumi.Input.asInput<String>(taskDefinition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'taskDefinition': taskDefinition,
    };
  }

  factory GetTaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionArgs(
      region: map['region'] == null ? null : map['region'] as String,
      taskDefinition: map['taskDefinition'] as String,
    );
  }
}
