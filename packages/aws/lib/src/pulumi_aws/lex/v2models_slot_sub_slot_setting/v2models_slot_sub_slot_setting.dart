// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_slot_sub_slot_setting_slot_specification/v2models_slot_sub_slot_setting_slot_specification.dart';

class V2modelsSlotSubSlotSetting {
  /// Expression text for defining the constituent sub slots in the composite slot using logical `AND` and `OR` operators.
  final String? expression;

  /// Specifications for the constituent sub slots of a composite slot.
  /// See the `slot_specification` argument reference below.
  final List<V2modelsSlotSubSlotSettingSlotSpecification>? slotSpecifications;

  V2modelsSlotSubSlotSetting({
    this.expression,
    this.slotSpecifications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    final slotSpecificationsValue = slotSpecifications;
    if (slotSpecificationsValue != null) {
      map['slotSpecifications'] = pulumi.Input.encodeList<
              V2modelsSlotSubSlotSettingSlotSpecification,
              Map<String, dynamic>>(
          slotSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotSubSlotSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSetting(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      slotSpecifications: map['slotSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotSubSlotSettingSlotSpecification>(
              map['slotSpecifications'],
              (value) => V2modelsSlotSubSlotSettingSlotSpecification.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
