// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationFailureResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}

