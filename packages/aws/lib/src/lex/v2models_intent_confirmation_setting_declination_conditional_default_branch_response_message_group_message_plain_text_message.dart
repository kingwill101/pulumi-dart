// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}
