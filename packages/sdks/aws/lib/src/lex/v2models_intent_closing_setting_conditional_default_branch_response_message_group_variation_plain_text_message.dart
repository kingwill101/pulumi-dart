// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}

