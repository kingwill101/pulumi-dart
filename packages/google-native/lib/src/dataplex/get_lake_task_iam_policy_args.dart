// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_task_iam_policy_args_doc}
/// Arguments for getLakeTaskIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_task_iam_policy_args_doc}
class GetLakeTaskIamPolicyArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taskId;

  /// Creates a new [GetLakeTaskIamPolicyArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [taskId] Required.
  GetLakeTaskIamPolicyArgs({
    required String lakeId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String taskId,
  })  : lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        taskId = pulumi.Input.asInput<String>(taskId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lakeId'] = lakeId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['taskId'] = taskId;
    return map;
  }

  factory GetLakeTaskIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeTaskIamPolicyArgs(
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      taskId: map['taskId'] as String,
    );
  }
}
