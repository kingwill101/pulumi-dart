// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}

