// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containeranalysis_v1alpha1_get_note_containeranalysis_v1alpha1_args_doc}
/// Arguments for getNote.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1alpha1_get_note_containeranalysis_v1alpha1_args_doc}
class GetNoteContaineranalysisV1alpha1Args {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNoteContaineranalysisV1alpha1Args].
  /// [noteId] Required.
  /// [project] Optional.
  GetNoteContaineranalysisV1alpha1Args({
    required String noteId,
    String? project,
  }) : noteId = pulumi.Input.asInput<String>(noteId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'noteId': noteId, 'project': ?project};
  }

  factory GetNoteContaineranalysisV1alpha1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNoteContaineranalysisV1alpha1Args(
      noteId: map['noteId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
