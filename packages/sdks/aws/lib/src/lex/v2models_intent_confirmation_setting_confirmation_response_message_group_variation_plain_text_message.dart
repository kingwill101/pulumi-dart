// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}

