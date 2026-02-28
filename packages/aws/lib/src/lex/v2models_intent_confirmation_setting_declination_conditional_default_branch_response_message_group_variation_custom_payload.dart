// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
