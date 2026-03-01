// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}

