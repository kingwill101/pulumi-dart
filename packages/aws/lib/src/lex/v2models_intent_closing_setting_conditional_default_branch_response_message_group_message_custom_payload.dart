// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentClosingSettingConditionalDefaultBranchResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
