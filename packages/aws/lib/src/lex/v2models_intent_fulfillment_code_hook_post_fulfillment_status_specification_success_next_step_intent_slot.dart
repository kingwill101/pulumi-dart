// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_fulfillment_code_hook_post_fulfillment_status_specification_success_next_step_intent_slot_value.dart';

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlot {
  /// Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  final String mapBlockKey;

  /// When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  final String? shape;

  /// Configuration block for the current value of the slot. See `value`.
  final V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlotValue?
      value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlot].
  /// [mapBlockKey] Which attempt to configure. Valid values are `Initial`, `Retry1`, `Retry2`, `Retry3`, `Retry4`, `Retry5`.
  /// [shape] When the shape value is `List`, `values` contains a list of slot values. When the value is `Scalar`, `value` contains a single value.
  /// [value] Configuration block for the current value of the slot. See `value`.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlot({
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

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlot.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlot(
      mapBlockKey: map['mapBlockKey'] as String,
      shape: map['shape'] == null ? null : map['shape'] as String,
      value: map['value'] == null
          ? null
          : V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessNextStepIntentSlotValue
              .fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
