// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationPlainTextMessage.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}
