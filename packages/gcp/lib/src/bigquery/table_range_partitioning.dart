// ignore_for_file: unused_element, unnecessary_cast

import 'table_range_partitioning_range.dart';

class TableRangePartitioning {
  /// The field used to determine how to create a range-based
  /// partition.
  final String field;

  /// Information required to partition based on ranges.
  /// Structure is documented below.
  final TableRangePartitioningRange range;

  /// Creates a new [TableRangePartitioning].
  /// [field] The field used to determine how to create a range-based
  /// [range] Information required to partition based on ranges.
  TableRangePartitioning({required this.field, required this.range});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'field': field, 'range': range.toMap()};
  }

  factory TableRangePartitioning.fromMap(Map<String, dynamic> map) {
    return TableRangePartitioning(
      field: map['field'] as String,
      range: TableRangePartitioningRange.fromMap(
        (map['range'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
