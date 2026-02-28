// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}
