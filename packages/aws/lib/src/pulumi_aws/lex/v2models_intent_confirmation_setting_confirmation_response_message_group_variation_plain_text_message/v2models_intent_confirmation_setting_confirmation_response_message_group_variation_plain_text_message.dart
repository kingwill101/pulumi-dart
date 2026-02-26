// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}
