// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
