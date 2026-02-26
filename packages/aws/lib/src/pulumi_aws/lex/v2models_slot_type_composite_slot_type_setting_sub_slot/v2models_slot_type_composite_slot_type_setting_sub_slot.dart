// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotTypeCompositeSlotTypeSettingSubSlot {
  /// Name of a constituent sub slot inside a composite slot.
  final String name;

  /// Unique identifier assigned to a slot type.
  /// This refers to either a built-in slot type or the unique <span pulumi-lang-nodejs="`slotTypeId`" pulumi-lang-dotnet="`SlotTypeId`" pulumi-lang-go="`slotTypeId`" pulumi-lang-python="`slot_type_id`" pulumi-lang-yaml="`slotTypeId`" pulumi-lang-java="`slotTypeId`">`slot_type_id`</span> of a custom slot type.
  final String slotTypeId;

  V2modelsSlotTypeCompositeSlotTypeSettingSubSlot({
    required this.name,
    required this.slotTypeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slotTypeId'] = slotTypeId;
    return map;
  }

  factory V2modelsSlotTypeCompositeSlotTypeSettingSubSlot.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotTypeCompositeSlotTypeSettingSubSlot(
      name: map['name'] as String,
      slotTypeId: map['slotTypeId'] as String,
    );
  }
}
