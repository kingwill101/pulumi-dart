// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_get_task_iam_policy_get_task_iam_policy_args_doc}
/// Arguments for getTaskIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_get_task_iam_policy_get_task_iam_policy_args_doc}
class GetTaskIamPolicyArgs {
  /// The lake in which the task will be created in.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> lake;
  /// The location in which the task will be created in.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> taskId;

  /// Creates a new [GetTaskIamPolicyArgs].
  /// [lake] The lake in which the task will be created in.
  /// [location] The location in which the task will be created in.
  /// [project] The ID of the project in which the resource belongs.
  /// [taskId] Used to find the parent resource to bind the IAM policy to
  GetTaskIamPolicyArgs({
    required String lake,
    String? location,
    String? project,
    required String taskId,
  }) :
      lake = pulumi.Input.asInput<String>(lake),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      taskId = pulumi.Input.asInput<String>(taskId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lake': lake,
      'location': ?location,
      'project': ?project,
      'taskId': taskId,
    };
  }

  factory GetTaskIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskIamPolicyArgs(
      lake: map['lake'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      taskId: map['taskId'] as String,
    );
  }
}

