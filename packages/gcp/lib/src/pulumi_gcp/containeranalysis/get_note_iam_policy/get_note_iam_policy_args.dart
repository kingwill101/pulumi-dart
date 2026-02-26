// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNoteIamPolicy.
class GetNoteIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> note;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  GetNoteIamPolicyArgs({
    required this.note,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['note'] = note;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNoteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNoteIamPolicyArgs(
      note: Input.asInput<String>(map['note']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
