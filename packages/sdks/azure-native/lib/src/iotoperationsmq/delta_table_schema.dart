// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Delta table schema properties
class DeltaTableSchema {
  /// Delta table format supported.
  final pulumi.Input<String> format;
  /// Delta table schema mapping.
  final pulumi.Input<String> mapping;
  /// Delta table schema name.
  final pulumi.Input<String> name;
  /// Delta table schema optional.
  final pulumi.Input<bool> optional;

  /// Creates a new [DeltaTableSchema].
  /// [format] Delta table format supported.
  /// [mapping] Delta table schema mapping.
  /// [name] Delta table schema name.
  /// [optional] Delta table schema optional.
  DeltaTableSchema({
    required this.format,
    required this.mapping,
    required this.name,
    required this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'mapping': mapping,
      'name': name,
      'optional': optional,
    };
  }

  factory DeltaTableSchema.fromMap(Map<String, dynamic> map) {
    return DeltaTableSchema(
      format: (map['format'] as String).input(),
      mapping: (map['mapping'] as String).input(),
      name: (map['name'] as String).input(),
      optional: (map['optional'] as bool).input(),
    );
  }
}

