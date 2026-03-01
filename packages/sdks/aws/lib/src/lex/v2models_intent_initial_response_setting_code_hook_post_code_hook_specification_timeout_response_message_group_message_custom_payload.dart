// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}

