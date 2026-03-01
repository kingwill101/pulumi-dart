// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingClosingResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}

