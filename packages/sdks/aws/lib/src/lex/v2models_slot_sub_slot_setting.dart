// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_sub_slot_setting_slot_specification.dart';

class V2modelsSlotSubSlotSetting {
  /// Expression text for defining the constituent sub slots in the composite slot using logical `AND` and `OR` operators.
  final pulumi.Input<String>? expression;
  /// Specifications for the constituent sub slots of a composite slot.
  /// See the `slot_specification` argument reference below.
  final pulumi.Input<List<V2modelsSlotSubSlotSettingSlotSpecification>>? slotSpecifications;

  /// Creates a new [V2modelsSlotSubSlotSetting].
  /// [expression] Expression text for defining the constituent sub slots in the composite slot using logical `AND` and `OR` operators.
  /// [slotSpecifications] Specifications for the constituent sub slots of a composite slot.
  V2modelsSlotSubSlotSetting({
    this.expression,
    this.slotSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'slotSpecifications': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotSubSlotSettingSlotSpecification>, List<Map<String, dynamic>>>(slotSpecifications, (value) => pulumi.Input.encodeList<V2modelsSlotSubSlotSettingSlotSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotSubSlotSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotSubSlotSetting(
      expression: map['expression'] == null ? null : (map['expression'] as String).input(),
      slotSpecifications: map['slotSpecifications'] == null ? null : (pulumi.Input.decodeList<V2modelsSlotSubSlotSettingSlotSpecification>(map['slotSpecifications'], (value) => V2modelsSlotSubSlotSettingSlotSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

