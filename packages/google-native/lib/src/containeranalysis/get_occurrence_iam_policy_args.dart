// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1_get_occurrence_iam_policy_args_doc}
/// Arguments for getOccurrenceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_get_occurrence_iam_policy_args_doc}
class GetOccurrenceIamPolicyArgs {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOccurrenceIamPolicyArgs].
  /// [occurrenceId] Required.
  /// [project] Optional.
  GetOccurrenceIamPolicyArgs({
    required String occurrenceId,
    String? project,
  })  : occurrenceId = pulumi.Input.asInput<String>(occurrenceId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['occurrenceId'] = occurrenceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetOccurrenceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOccurrenceIamPolicyArgs(
      occurrenceId: map['occurrenceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
