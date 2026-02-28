// ignore_for_file: unused_element, unnecessary_cast

import 'range_partitioning_range.dart';

class RangePartitioning {
  /// [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64.
  final String? field;

  /// [TrustedTester] [Required] Defines the ranges for range partitioning.
  final RangePartitioningRange? range;

  /// Creates a new [RangePartitioning].
  /// [field] [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64.
  /// [range] [TrustedTester] [Required] Defines the ranges for range partitioning.
  RangePartitioning({
    this.field,
    this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue.toMap();
    }
    return map;
  }

  factory RangePartitioning.fromMap(Map<String, dynamic> map) {
    return RangePartitioning(
      field: map['field'] == null ? null : map['field'] as String,
      range: map['range'] == null
          ? null
          : RangePartitioningRange.fromMap(
              (map['range'] as Map).cast<String, dynamic>()),
    );
  }
}
