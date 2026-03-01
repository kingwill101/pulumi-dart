// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageCustomPayload.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}

