// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
