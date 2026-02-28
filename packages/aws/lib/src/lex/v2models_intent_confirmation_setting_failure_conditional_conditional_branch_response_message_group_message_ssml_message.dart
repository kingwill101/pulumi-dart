// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}
