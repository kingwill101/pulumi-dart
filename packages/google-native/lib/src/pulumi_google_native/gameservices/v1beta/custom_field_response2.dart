// ignore_for_file: unused_element, unnecessary_cast

/// Custom fields. These can be used to create a counter with arbitrary field/value pairs. See: go/rpcsp-custom-fields.
class CustomFieldResponse2 {
  /// Name is the field name.
  final String name;

  /// Value is the field value. It is important that in contrast to the CounterOptions.field, the value here is a constant that is not derived from the IAMContext.
  final String value;

  CustomFieldResponse2({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory CustomFieldResponse2.fromMap(Map<String, dynamic> map) {
    return CustomFieldResponse2(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
