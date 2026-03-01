// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1beta1_get_occurrence_iam_policy_containeranalysis_v1beta1_args_doc}
/// Arguments for getOccurrenceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1beta1_get_occurrence_iam_policy_containeranalysis_v1beta1_args_doc}
class GetOccurrenceIamPolicyContaineranalysisV1beta1Args {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOccurrenceIamPolicyContaineranalysisV1beta1Args].
  /// [occurrenceId] Required.
  /// [project] Optional.
  GetOccurrenceIamPolicyContaineranalysisV1beta1Args({
    required String occurrenceId,
    String? project,
  }) : occurrenceId = pulumi.Input.asInput<String>(occurrenceId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'occurrenceId': occurrenceId, 'project': ?project};
  }

  factory GetOccurrenceIamPolicyContaineranalysisV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOccurrenceIamPolicyContaineranalysisV1beta1Args(
      occurrenceId: map['occurrenceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
