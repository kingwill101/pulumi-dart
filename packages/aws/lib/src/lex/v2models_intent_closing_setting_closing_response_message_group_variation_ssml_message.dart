// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}
