// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}
