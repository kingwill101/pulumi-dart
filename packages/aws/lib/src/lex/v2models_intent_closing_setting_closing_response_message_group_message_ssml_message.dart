// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentClosingSettingClosingResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingClosingResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentClosingSettingClosingResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentClosingSettingClosingResponseMessageGroupMessageSsmlMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentClosingSettingClosingResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}
