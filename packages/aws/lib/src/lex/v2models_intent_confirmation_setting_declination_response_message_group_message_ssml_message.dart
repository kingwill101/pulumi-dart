// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}
