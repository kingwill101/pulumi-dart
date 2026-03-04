// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfiguredTableTableReference {
  final pulumi.Input<String> databaseName;
  final pulumi.Input<String> tableName;

  /// Creates a new [ConfiguredTableTableReference].
  /// [databaseName] Required.
  /// [tableName] Required.
  ConfiguredTableTableReference({
    required this.databaseName,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'tableName': tableName,
    };
  }

  factory ConfiguredTableTableReference.fromMap(Map<String, dynamic> map) {
    return ConfiguredTableTableReference(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
