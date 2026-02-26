// ignore_for_file: unused_element, unnecessary_cast

class AssistantGenerationConfigSystemInstruction {
  /// Additional system instruction that will be added to the default system instruction.
  final String? additionalSystemInstruction;

  AssistantGenerationConfigSystemInstruction({
    this.additionalSystemInstruction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalSystemInstructionValue = additionalSystemInstruction;
    if (additionalSystemInstructionValue != null) {
      map['additionalSystemInstruction'] = additionalSystemInstructionValue;
    }
    return map;
  }

  factory AssistantGenerationConfigSystemInstruction.fromMap(
      Map<String, dynamic> map) {
    return AssistantGenerationConfigSystemInstruction(
      additionalSystemInstruction: map['additionalSystemInstruction'] == null
          ? null
          : map['additionalSystemInstruction'] as String,
    );
  }
}
