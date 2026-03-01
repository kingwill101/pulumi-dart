// ignore_for_file: unused_element, unnecessary_cast


class TablePrimaryKey {
  /// Name for primary key.
  final String name;
  /// Type for primary key. Only `Integer`, `String` or `Binary` is allowed.
  final String type;

  /// Creates a new [TablePrimaryKey].
  /// [name] Name for primary key.
  /// [type] Type for primary key. Only `Integer`, `String` or `Binary` is allowed.
  TablePrimaryKey({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory TablePrimaryKey.fromMap(Map<String, dynamic> map) {
    return TablePrimaryKey(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

