// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_slot_type_composite_slot_type_setting_sub_slot.dart';

class V2modelsSlotTypeCompositeSlotTypeSetting {
  /// Sub slots in the composite slot.
  /// See `subSlots` argument reference below.
  final pulumi.Input<List<V2modelsSlotTypeCompositeSlotTypeSettingSubSlot>?>? subSlots;

  /// Creates a new [V2modelsSlotTypeCompositeSlotTypeSetting].
  /// [subSlots] Sub slots in the composite slot.
  const V2modelsSlotTypeCompositeSlotTypeSetting({
    this.subSlots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subSlots': ?pulumi.Input.mapOptionalInputValue<List<V2modelsSlotTypeCompositeSlotTypeSettingSubSlot>, List<Map<String, dynamic>>>(subSlots, (value) => pulumi.Input.encodeList<V2modelsSlotTypeCompositeSlotTypeSettingSubSlot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2modelsSlotTypeCompositeSlotTypeSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotTypeCompositeSlotTypeSetting(
      subSlots: (() { final guardedValue = map['subSlots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsSlotTypeCompositeSlotTypeSettingSubSlot>(guardedValue, (value) => V2modelsSlotTypeCompositeSlotTypeSettingSubSlot.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
