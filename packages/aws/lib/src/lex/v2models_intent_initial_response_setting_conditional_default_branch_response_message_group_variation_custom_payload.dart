// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
