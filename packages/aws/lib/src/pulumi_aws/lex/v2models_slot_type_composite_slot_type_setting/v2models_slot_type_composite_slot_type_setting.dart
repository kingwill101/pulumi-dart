// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2models_slot_type_composite_slot_type_setting_sub_slot/v2models_slot_type_composite_slot_type_setting_sub_slot.dart';

class V2modelsSlotTypeCompositeSlotTypeSetting {
  /// Sub slots in the composite slot.
  /// See `sub_slots` argument reference below.
  final List<V2modelsSlotTypeCompositeSlotTypeSettingSubSlot>? subSlots;

  V2modelsSlotTypeCompositeSlotTypeSetting({
    this.subSlots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final subSlotsValue = subSlots;
    if (subSlotsValue != null) {
      map['subSlots'] = pulumi.Input.encodeList<
          V2modelsSlotTypeCompositeSlotTypeSettingSubSlot,
          Map<String, dynamic>>(subSlotsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2modelsSlotTypeCompositeSlotTypeSetting.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotTypeCompositeSlotTypeSetting(
      subSlots: map['subSlots'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2modelsSlotTypeCompositeSlotTypeSettingSubSlot>(
              map['subSlots'],
              (value) =>
                  V2modelsSlotTypeCompositeSlotTypeSettingSubSlot.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
