// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTablesTablePrimaryKey {
  final pulumi.Input<String> name;
  final pulumi.Input<String> type;

  /// Creates a new [GetTablesTablePrimaryKey].
  /// [name] Required.
  /// [type] Required.
  const GetTablesTablePrimaryKey({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetTablesTablePrimaryKey.fromMap(Map<String, dynamic> map) {
    return GetTablesTablePrimaryKey(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

