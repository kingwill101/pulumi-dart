// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetPhysicalTableMapCustomSqlColumn {
  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  /// Data type of the column.
  final pulumi.Input<String> type;

  /// Creates a new [DataSetPhysicalTableMapCustomSqlColumn].
  /// [name] Display name for the dataset.
  /// [type] Data type of the column.
  const DataSetPhysicalTableMapCustomSqlColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory DataSetPhysicalTableMapCustomSqlColumn.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMapCustomSqlColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
