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
    final map = <String, dynamic>{};
    map['column'] = column;
    map['sortOrder'] = sortOrder;
    return map;
  }

  factory PartitionStorageDescriptorSortColumn.fromMap(
      Map<String, dynamic> map) {
    return PartitionStorageDescriptorSortColumn(
      column: map['column'] as String,
      sortOrder: map['sortOrder'] as int,
    );
  }
}
