// ignore_for_file: unused_element, unnecessary_cast


class ApiProductOperationGroupOperationConfigAttribute {
  /// Key of the attribute.
  final String? name;
  /// Value of the attribute.
  final String? value;

  /// Creates a new [ApiProductOperationGroupOperationConfigAttribute].
  /// [name] Key of the attribute.
  /// [value] Value of the attribute.
  ApiProductOperationGroupOperationConfigAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ApiProductOperationGroupOperationConfigAttribute.fromMap(Map<String, dynamic> map) {
    return ApiProductOperationGroupOperationConfigAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

