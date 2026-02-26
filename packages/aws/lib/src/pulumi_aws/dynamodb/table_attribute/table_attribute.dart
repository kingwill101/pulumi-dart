// ignore_for_file: unused_element, unnecessary_cast

class TableAttribute {
  /// Name of the attribute
  final String name;

  /// Attribute type. Valid values are `S` (string), `N` (number), `B` (binary).
  final String type;

  TableAttribute({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory TableAttribute.fromMap(Map<String, dynamic> map) {
    return TableAttribute(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
