// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingClosingResponseMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}
