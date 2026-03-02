// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TablePrimaryKey {
  /// Name for primary key.
  final pulumi.Input<String> name;
  /// Type for primary key. Only `Integer`, `String` or `Binary` is allowed.
  final pulumi.Input<String> type;

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
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

