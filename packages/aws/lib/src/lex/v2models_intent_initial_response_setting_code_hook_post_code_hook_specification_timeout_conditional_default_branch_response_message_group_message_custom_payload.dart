// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationTimeoutConditionalDefaultBranchResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
