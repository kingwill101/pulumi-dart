// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNote.
class GetNoteContaineranalysisV1alpha1Args {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String>? project;

  GetNoteContaineranalysisV1alpha1Args({
    required this.noteId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['noteId'] = noteId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNoteContaineranalysisV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetNoteContaineranalysisV1alpha1Args(
      noteId: pulumi.Input.asInput<String>(map['noteId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
