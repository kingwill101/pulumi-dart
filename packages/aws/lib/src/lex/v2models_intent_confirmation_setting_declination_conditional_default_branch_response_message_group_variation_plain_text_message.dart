// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}
