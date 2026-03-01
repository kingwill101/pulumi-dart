// ignore_for_file: unused_element, unnecessary_cast

class PartitionStorageDescriptorSortColumn {
  /// The name of the column.
  final String column;

  /// Indicates that the column is sorted in ascending order (== 1), or in descending order (==0).
  final int sortOrder;

  /// Creates a new [PartitionStorageDescriptorSortColumn].
  /// [column] The name of the column.
  /// [sortOrder] Indicates that the column is sorted in ascending order (== 1), or in descending order (==0).
  PartitionStorageDescriptorSortColumn({
    required this.column,
    required this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'column': column, 'sortOrder': sortOrder};
  }

  factory PartitionStorageDescriptorSortColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return PartitionStorageDescriptorSortColumn(
      column: map['column'] as String,
      sortOrder: map['sortOrder'] as int,
    );
  }
}
