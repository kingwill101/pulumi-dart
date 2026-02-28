// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
