// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNote.
class GetNoteArgs3 {
  final Input<String> noteId;
  final Input<String>? project;

  GetNoteArgs3({
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

  factory GetNoteArgs3.fromMap(Map<String, dynamic> map) {
    return GetNoteArgs3(
      noteId: Input.asInput<String>(map['noteId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
