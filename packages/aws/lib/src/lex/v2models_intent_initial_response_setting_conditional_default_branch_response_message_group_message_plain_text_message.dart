// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}
