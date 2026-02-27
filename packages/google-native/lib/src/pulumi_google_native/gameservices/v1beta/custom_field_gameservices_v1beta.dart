// ignore_for_file: unused_element, unnecessary_cast

/// Custom fields. These can be used to create a counter with arbitrary field/value pairs. See: go/rpcsp-custom-fields.
class CustomFieldGameservicesV1beta {
  /// Name is the field name.
  final String? name;

  /// Value is the field value. It is important that in contrast to the CounterOptions.field, the value here is a constant that is not derived from the IAMContext.
  final String? value;

  CustomFieldGameservicesV1beta({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory CustomFieldGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return CustomFieldGameservicesV1beta(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
