// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1alpha1_get_note_iam_policy_containeranalysis_v1alpha1_args_doc}
/// Arguments for getNoteIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_get_note_iam_policy_containeranalysis_v1alpha1_args_doc}
class GetNoteIamPolicyContaineranalysisV1alpha1Args {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNoteIamPolicyContaineranalysisV1alpha1Args].
  /// [noteId] Required.
  /// [project] Optional.
  GetNoteIamPolicyContaineranalysisV1alpha1Args({
    required String noteId,
    String? project,
  })  : noteId = pulumi.Input.asInput<String>(noteId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['noteId'] = noteId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNoteIamPolicyContaineranalysisV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetNoteIamPolicyContaineranalysisV1alpha1Args(
      noteId: map['noteId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
