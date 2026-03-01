// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}

