// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}
