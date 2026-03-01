// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationCustomPayload.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentInitialResponseSettingInitialResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
