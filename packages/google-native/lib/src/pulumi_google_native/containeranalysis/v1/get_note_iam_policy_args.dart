// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNoteIamPolicy.
class GetNoteIamPolicyArgs {
  final pulumi.Input<String> noteId;
  final pulumi.Input<String>? project;

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
      noteId: pulumi.Input.asInput<String>(map['noteId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
