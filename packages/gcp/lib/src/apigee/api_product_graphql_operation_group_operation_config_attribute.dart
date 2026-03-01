// ignore_for_file: unused_element, unnecessary_cast

class ApiProductGraphqlOperationGroupOperationConfigAttribute {
  /// Key of the attribute.
  final String? name;

  /// Value of the attribute.
  final String? value;

  /// Creates a new [ApiProductGraphqlOperationGroupOperationConfigAttribute].
  /// [name] Key of the attribute.
  /// [value] Value of the attribute.
  ApiProductGraphqlOperationGroupOperationConfigAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory ApiProductGraphqlOperationGroupOperationConfigAttribute.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiProductGraphqlOperationGroupOperationConfigAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
