// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetPhysicalTableMapRelationalTableInputColumn {
  /// Name of this column in the underlying data source.
  final pulumi.Input<String> name;
  /// Data type of the column.
  final pulumi.Input<String> type;

  /// Creates a new [DataSetPhysicalTableMapRelationalTableInputColumn].
  /// [name] Name of this column in the underlying data source.
  /// [type] Data type of the column.
  const DataSetPhysicalTableMapRelationalTableInputColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory DataSetPhysicalTableMapRelationalTableInputColumn.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMapRelationalTableInputColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

