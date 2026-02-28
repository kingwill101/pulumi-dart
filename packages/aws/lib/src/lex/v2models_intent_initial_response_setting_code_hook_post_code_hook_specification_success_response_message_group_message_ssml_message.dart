// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}
