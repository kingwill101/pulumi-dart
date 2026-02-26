// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotTypeSlotTypeValueSampleValue {
  /// Value that can be used for a slot type.
  final String value;

  V2modelsSlotTypeSlotTypeValueSampleValue({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsSlotTypeSlotTypeValueSampleValue.fromMap(
      Map<String, dynamic> map) {
    return V2modelsSlotTypeSlotTypeValueSampleValue(
      value: map['value'] as String,
    );
  }
}
