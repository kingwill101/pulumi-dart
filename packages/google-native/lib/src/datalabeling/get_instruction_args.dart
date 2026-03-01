// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_get_instruction_args_doc}
/// Arguments for getInstruction.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_get_instruction_args_doc}
class GetInstructionArgs {
  final pulumi.Input<String> instructionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstructionArgs].
  /// [instructionId] Required.
  /// [project] Optional.
  GetInstructionArgs({required String instructionId, String? project})
    : instructionId = pulumi.Input.asInput<String>(instructionId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instructionId': instructionId,
      'project': ?project,
    };
  }

  factory GetInstructionArgs.fromMap(Map<String, dynamic> map) {
    return GetInstructionArgs(
      instructionId: map['instructionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
