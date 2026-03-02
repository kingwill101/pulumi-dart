// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of custom data column.
class ColumnDefinitionResponse {
  /// The name of the column.
  final pulumi.Input<String>? name;
  /// The type of the column data.
  final pulumi.Input<String>? type;

  /// Creates a new [ColumnDefinitionResponse].
  /// [name] The name of the column.
  /// [type] The type of the column data.
  ColumnDefinitionResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ColumnDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ColumnDefinitionResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

