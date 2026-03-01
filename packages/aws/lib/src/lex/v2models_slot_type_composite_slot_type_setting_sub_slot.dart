// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotTypeCompositeSlotTypeSettingSubSlot {
  /// Name of a constituent sub slot inside a composite slot.
  final String name;

  /// Unique identifier assigned to a slot type.
  /// This refers to either a built-in slot type or the unique `slot_type_id` of a custom slot type.
  final String slotTypeId;

  /// Creates a new [V2modelsSlotTypeCompositeSlotTypeSettingSubSlot].
  /// [name] Name of a constituent sub slot inside a composite slot.
  /// [slotTypeId] Unique identifier assigned to a slot type.
  V2modelsSlotTypeCompositeSlotTypeSettingSubSlot({
    required this.name,
    required this.slotTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'slotTypeId': slotTypeId};
  }

  factory V2modelsSlotTypeCompositeSlotTypeSettingSubSlot.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsSlotTypeCompositeSlotTypeSettingSubSlot(
      name: map['name'] as String,
      slotTypeId: map['slotTypeId'] as String,
    );
  }
}
