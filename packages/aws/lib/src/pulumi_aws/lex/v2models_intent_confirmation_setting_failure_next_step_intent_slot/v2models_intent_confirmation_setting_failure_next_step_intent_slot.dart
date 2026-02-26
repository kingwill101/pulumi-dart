// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_confirmation_setting_failure_next_step_intent_slot_value/v2models_intent_confirmation_setting_failure_next_step_intent_slot_value.dart';

class V2modelsIntentConfirmationSettingFailureNextStepIntentSlot {
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final String mapBlockKey;

  /// When the shape value is `List`, <span pulumi-lang-nodejs="`values`" pulumi-lang-dotnet="`Values`" pulumi-lang-go="`values`" pulumi-lang-python="`values`" pulumi-lang-yaml="`values`" pulumi-lang-java="`values`">`values`</span> contains a list of slot values. When the value is `Scalar`, <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> contains a single value.
  final String? shape;

  /// Configuration block for the current value of the slot. See <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span>.
  final V2modelsIntentConfirmationSettingFailureNextStepIntentSlotValue? value;

  V2modelsIntentConfirmationSettingFailureNextStepIntentSlot({
    required this.mapBlockKey,
    this.shape,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mapBlockKey'] = mapBlockKey;
    final shapeValue = shape;
    if (shapeValue != null) {
      map['shape'] = shapeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingFailureNextStepIntentSlot.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureNextStepIntentSlot(
      mapBlockKey: map['mapBlockKey'] as String,
      shape: map['shape'] == null ? null : map['shape'] as String,
      value: map['value'] == null
          ? null
          : V2modelsIntentConfirmationSettingFailureNextStepIntentSlotValue
              .fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
