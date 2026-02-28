// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}
