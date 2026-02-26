// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
