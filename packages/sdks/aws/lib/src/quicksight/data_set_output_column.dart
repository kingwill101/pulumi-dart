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
  DataSetOutputColumn({
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

