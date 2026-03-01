// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}

