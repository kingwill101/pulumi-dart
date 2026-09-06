// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema of a CDC table in terms of column names and their corresponding data types.
class MapperTableSchema {
  /// Data type of the column.
  final pulumi.Input<String?>? dataType;
  /// Name of the column.
  final pulumi.Input<String?>? name;

  /// Creates a new [MapperTableSchema].
  /// [dataType] Data type of the column.
  /// [name] Name of the column.
  const MapperTableSchema({
    this.dataType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'name': ?name,
    };
  }

  factory MapperTableSchema.fromMap(Map<String, dynamic> map) {
    return MapperTableSchema(
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
