// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}
