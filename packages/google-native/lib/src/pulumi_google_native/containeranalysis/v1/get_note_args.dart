// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNote.
class GetNoteArgs {
  final Input<String> noteId;
  final Input<String>? project;

  GetNoteArgs({
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

  factory GetNoteArgs.fromMap(Map<String, dynamic> map) {
    return GetNoteArgs(
      noteId: Input.asInput<String>(map['noteId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
