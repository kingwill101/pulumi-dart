// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentClosingSettingNextStepIntentSlotValue {
  /// Value that Amazon Lex determines for the slot. The actual value depends on the setting of the value selection strategy for the bot. You can choose to use the value entered by the user, or you can have Amazon Lex choose the first value in the resolvedValues list.
  final String? interpretedValue;

  /// Creates a new [V2modelsIntentClosingSettingNextStepIntentSlotValue].
  /// [interpretedValue] Value that Amazon Lex determines for the slot. The actual value depends on the setting of the value selection strategy for the bot. You can choose to use the value entered by the user, or you can have Amazon Lex choose the first value in the resolvedValues list.
  V2modelsIntentClosingSettingNextStepIntentSlotValue({
    this.interpretedValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interpretedValue': ?interpretedValue,
    };
  }

  factory V2modelsIntentClosingSettingNextStepIntentSlotValue.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingNextStepIntentSlotValue(
      interpretedValue: map['interpretedValue'] == null ? null : map['interpretedValue'] as String,
    );
  }
}

