// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key that can be used for joining on enrich.
class DatasetPropertyKeyResponse {
  /// Path to the input value from the message.
  final pulumi.Input<String> path;
  /// If true the property will be used as a primary key. At most one primary key can exists.
  final pulumi.Input<bool>? primaryKey;

  /// Creates a new [DatasetPropertyKeyResponse].
  /// [path] Path to the input value from the message.
  /// [primaryKey] If true the property will be used as a primary key. At most one primary key can exists.
  DatasetPropertyKeyResponse({
    required this.path,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'primaryKey': ?primaryKey,
    };
  }

  factory DatasetPropertyKeyResponse.fromMap(Map<String, dynamic> map) {
    return DatasetPropertyKeyResponse(
      path: (map['path'] as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey'] as bool).input(),
    );
  }
}

