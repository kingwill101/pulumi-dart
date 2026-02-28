// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}
