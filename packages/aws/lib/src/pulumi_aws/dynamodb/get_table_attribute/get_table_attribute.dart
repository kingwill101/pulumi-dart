// ignore_for_file: unused_element, unnecessary_cast

class GetTableAttribute {
  /// Name of the DynamoDB table.
  final String name;
  final String type;

  GetTableAttribute({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GetTableAttribute.fromMap(Map<String, dynamic> map) {
    return GetTableAttribute(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
