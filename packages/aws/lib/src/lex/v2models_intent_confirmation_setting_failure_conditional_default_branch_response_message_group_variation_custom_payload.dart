// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingFailureConditionalDefaultBranchResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
