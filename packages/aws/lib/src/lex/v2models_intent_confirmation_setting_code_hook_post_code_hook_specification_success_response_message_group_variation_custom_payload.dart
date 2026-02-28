// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
