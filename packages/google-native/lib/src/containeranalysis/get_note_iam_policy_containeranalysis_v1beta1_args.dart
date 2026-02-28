// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1beta1_get_note_iam_policy_containeranalysis_v1beta1_args_doc}
/// Arguments for getNoteIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1beta1_get_note_iam_policy_containeranalysis_v1beta1_args_doc}
class GetNoteIamPolicyContaineranalysisV1beta1Args {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNoteIamPolicyContaineranalysisV1beta1Args].
  /// [noteId] Required.
  /// [project] Optional.
  GetNoteIamPolicyContaineranalysisV1beta1Args({
    required String noteId,
    String? project,
  }) :
      noteId = pulumi.Input.asInput<String>(noteId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noteId': noteId,
      'project': ?project,
    };
  }

  factory GetNoteIamPolicyContaineranalysisV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNoteIamPolicyContaineranalysisV1beta1Args(
      noteId: map['noteId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

