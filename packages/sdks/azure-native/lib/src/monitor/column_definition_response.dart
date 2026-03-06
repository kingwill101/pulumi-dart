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
  const ColumnDefinitionResponse({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

