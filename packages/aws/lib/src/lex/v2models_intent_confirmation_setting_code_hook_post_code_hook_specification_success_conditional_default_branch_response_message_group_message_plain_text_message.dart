// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}
