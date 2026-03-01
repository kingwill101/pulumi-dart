// ignore_for_file: unused_element, unnecessary_cast

class GetTableAttribute {
  /// Name of the DynamoDB table.
  final String name;
  final String type;

  /// Creates a new [GetTableAttribute].
  /// [name] Name of the DynamoDB table.
  /// [type] Required.
  GetTableAttribute({required this.name, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory GetTableAttribute.fromMap(Map<String, dynamic> map) {
    return GetTableAttribute(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
