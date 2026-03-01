// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationCustomPayload.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}

