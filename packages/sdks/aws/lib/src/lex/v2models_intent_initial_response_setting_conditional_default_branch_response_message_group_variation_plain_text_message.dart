// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}

