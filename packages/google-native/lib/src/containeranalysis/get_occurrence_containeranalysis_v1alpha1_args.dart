// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1alpha1_get_occurrence_containeranalysis_v1alpha1_args_doc}
/// Arguments for getOccurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_get_occurrence_containeranalysis_v1alpha1_args_doc}
class GetOccurrenceContaineranalysisV1alpha1Args {
  final pulumi.Input<String> occurrenceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOccurrenceContaineranalysisV1alpha1Args].
  /// [occurrenceId] Required.
  /// [project] Optional.
  GetOccurrenceContaineranalysisV1alpha1Args({
    required String occurrenceId,
    String? project,
  }) : occurrenceId = pulumi.Input.asInput<String>(occurrenceId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'occurrenceId': occurrenceId, 'project': ?project};
  }

  factory GetOccurrenceContaineranalysisV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOccurrenceContaineranalysisV1alpha1Args(
      occurrenceId: map['occurrenceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
