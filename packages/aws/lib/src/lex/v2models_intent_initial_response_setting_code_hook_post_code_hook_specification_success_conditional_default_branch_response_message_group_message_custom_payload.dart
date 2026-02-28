// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
