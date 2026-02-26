// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotTypeSlotTypeValueSynonym {
  /// Value that can be used for a slot type.
  final String value;

  V2modelsSlotTypeSlotTypeValueSynonym({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotTypeSlotTypeValueSynonym.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotTypeSlotTypeValueSynonym(
      value: map['value'] as String,
    );
  }
}
