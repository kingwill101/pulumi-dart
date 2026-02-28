// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
