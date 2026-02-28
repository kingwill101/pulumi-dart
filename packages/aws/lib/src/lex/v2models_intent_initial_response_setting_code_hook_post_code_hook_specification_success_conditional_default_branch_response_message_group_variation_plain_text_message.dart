// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}
