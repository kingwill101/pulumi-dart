// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetPhysicalTableMapCustomSqlColumn {
  /// Name of this column in the underlying data source.
  final pulumi.Input<String> name;
  /// Data type of the column.
  final pulumi.Input<String> type;

  /// Creates a new [DataSetPhysicalTableMapCustomSqlColumn].
  /// [name] Name of this column in the underlying data source.
  /// [type] Data type of the column.
  DataSetPhysicalTableMapCustomSqlColumn({
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
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

