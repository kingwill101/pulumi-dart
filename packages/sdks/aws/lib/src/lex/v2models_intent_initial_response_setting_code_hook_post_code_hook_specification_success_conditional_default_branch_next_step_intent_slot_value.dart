// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue {
  /// Value that Amazon Lex determines for the slot. The actual value depends on the setting of the value selection strategy for the bot. You can choose to use the value entered by the user, or you can have Amazon Lex choose the first value in the resolvedValues list.
  final String? interpretedValue;

  /// Creates a new [V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue].
  /// [interpretedValue] Value that Amazon Lex determines for the slot. The actual value depends on the setting of the value selection strategy for the bot. You can choose to use the value entered by the user, or you can have Amazon Lex choose the first value in the resolvedValues list.
  V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interpretedValue': ?interpretedValue,
    };
  }

  factory V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingCodeHookPostCodeHookSpecificationSuccessConditionalDefaultBranchNextStepIntentSlotValue(
      interpretedValue: map['interpretedValue'] == null ? null : map['interpretedValue'] as String,
    );
  }
}

