// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetLogicalTableMapDataTransformUntagColumnOperation {
  /// Column name.
  final pulumi.Input<String> columnName;
  /// The column tags to remove from this column.
  final pulumi.Input<List<String>> tagNames;

  /// Creates a new [DataSetLogicalTableMapDataTransformUntagColumnOperation].
  /// [columnName] Column name.
  /// [tagNames] The column tags to remove from this column.
  const DataSetLogicalTableMapDataTransformUntagColumnOperation({
    required this.columnName,
    required this.tagNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'tagNames': tagNames,
    };
  }

  factory DataSetLogicalTableMapDataTransformUntagColumnOperation.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformUntagColumnOperation(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      tagNames: pulumi.Input.fromValue((map['tagNames'] as List).cast<String>()),
    );
  }
}

