// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNoteIamPolicy.
class GetNoteIamPolicyArgs {
  final Input<String> noteId;
  final Input<String>? project;

  GetNoteIamPolicyArgs({
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

  factory GetNoteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNoteIamPolicyArgs(
      noteId: Input.asInput<String>(map['noteId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
