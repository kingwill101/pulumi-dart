// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstruction.
class GetInstructionArgs {
  final Input<String> instructionId;
  final Input<String>? project;

  GetInstructionArgs({
    required this.instructionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instructionId'] = instructionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstructionArgs.fromMap(Map<String, dynamic> map) {
    return GetInstructionArgs(
      instructionId: Input.asInput<String>(map['instructionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
