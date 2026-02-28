// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}
