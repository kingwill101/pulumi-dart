// ignore_for_file: unused_element, unnecessary_cast


/// Custom fields. These can be used to create a counter with arbitrary field/value pairs. See: go/rpcsp-custom-fields.
class CustomFieldResponse {
  /// Name is the field name.
  final String name;
  /// Value is the field value. It is important that in contrast to the CounterOptions.field, the value here is a constant that is not derived from the IAMContext.
  final String value;

  /// Creates a new [CustomFieldResponse].
  /// [name] Name is the field name.
  /// [value] Value is the field value. It is important that in contrast to the CounterOptions.field, the value here is a constant that is not derived from the IAMContext.
  CustomFieldResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory CustomFieldResponse.fromMap(Map<String, dynamic> map) {
    return CustomFieldResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

