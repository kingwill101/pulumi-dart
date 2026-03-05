// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PartitionStorageDescriptorSortColumn {
  /// The name of the column.
  final pulumi.Input<String> column;
  /// Indicates that the column is sorted in ascending order (== 1), or in descending order (==0).
  final pulumi.Input<int> sortOrder;

  /// Creates a new [PartitionStorageDescriptorSortColumn].
  /// [column] The name of the column.
  /// [sortOrder] Indicates that the column is sorted in ascending order (== 1), or in descending order (==0).
  PartitionStorageDescriptorSortColumn({
    required this.column,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'sortOrder': sortOrder,
    };
  }

  factory PartitionStorageDescriptorSortColumn.fromMap(Map<String, dynamic> map) {
    return PartitionStorageDescriptorSortColumn(
      column: pulumi.Input.fromValue(map['column'] as String),
      sortOrder: pulumi.Input.fromValue(map['sortOrder'] as int),
    );
  }
}

