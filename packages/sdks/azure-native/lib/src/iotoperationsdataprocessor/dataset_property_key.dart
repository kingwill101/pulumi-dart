// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key that can be used for joining on enrich.
class DatasetPropertyKey {
  /// Path to the input value from the message.
  final pulumi.Input<String> path;
  /// If true the property will be used as a primary key. At most one primary key can exists.
  final pulumi.Input<bool?>? primaryKey;

  /// Creates a new [DatasetPropertyKey].
  /// [path] Path to the input value from the message.
  /// [primaryKey] If true the property will be used as a primary key. At most one primary key can exists.
  const DatasetPropertyKey({
    required this.path,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'primaryKey': ?primaryKey,
    };
  }

  factory DatasetPropertyKey.fromMap(Map<String, dynamic> map) {
    return DatasetPropertyKey(
      path: pulumi.Input.fromValue(map['path'] as String),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
