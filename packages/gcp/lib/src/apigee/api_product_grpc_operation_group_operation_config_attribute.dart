// ignore_for_file: unused_element, unnecessary_cast


class ApiProductGrpcOperationGroupOperationConfigAttribute {
  /// Key of the attribute.
  final String? name;
  /// Value of the attribute.
  final String? value;

  /// Creates a new [ApiProductGrpcOperationGroupOperationConfigAttribute].
  /// [name] Key of the attribute.
  /// [value] Value of the attribute.
  ApiProductGrpcOperationGroupOperationConfigAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ApiProductGrpcOperationGroupOperationConfigAttribute.fromMap(Map<String, dynamic> map) {
    return ApiProductGrpcOperationGroupOperationConfigAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

