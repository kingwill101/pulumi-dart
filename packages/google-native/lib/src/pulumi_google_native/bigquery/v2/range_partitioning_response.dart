// ignore_for_file: unused_element, unnecessary_cast

import 'range_partitioning_range_response.dart';

class RangePartitioningResponse {
  /// [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64.
  final String field;

  /// [TrustedTester] [Required] Defines the ranges for range partitioning.
  final RangePartitioningRangeResponse range;

  RangePartitioningResponse({
    required this.field,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['field'] = field;
    map['range'] = range.toMap();
    return map;
  }

  factory RangePartitioningResponse.fromMap(Map<String, dynamic> map) {
    return RangePartitioningResponse(
      field: map['field'] as String,
      range: RangePartitioningRangeResponse.fromMap(
          (map['range'] as Map).cast<String, dynamic>()),
    );
  }
}
