// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetOutputColumn {
  /// The description of the column.
  final pulumi.Input<String>? description;
  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// The data type of the column.
  final pulumi.Input<String>? type;

  /// Creates a new [DataSetOutputColumn].
  /// [description] The description of the column.
  /// [name] Display name for the dataset.
  /// [type] The data type of the column.
  const DataSetOutputColumn({
    this.description,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'type': ?type,
    };
  }

  factory DataSetOutputColumn.fromMap(Map<String, dynamic> map) {
    return DataSetOutputColumn(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

