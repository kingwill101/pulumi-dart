// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_table_range_partitioning_range/get_table_range_partitioning_range.dart';

class GetTableRangePartitioning {
  /// The field used to determine how to create a range-based partition.
  final String field;

  /// Information required to partition based on ranges. Structure is documented below.
  final List<GetTableRangePartitioningRange> ranges;

  GetTableRangePartitioning({
    required this.field,
    required this.ranges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['field'] = field;
    map['ranges'] =
        Input.encodeList<GetTableRangePartitioningRange, Map<String, dynamic>>(
            ranges, (value) => value.toMap());
    return map;
  }

  factory GetTableRangePartitioning.fromMap(Map<String, dynamic> map) {
    return GetTableRangePartitioning(
      field: map['field'] as String,
      ranges: Input.decodeList<GetTableRangePartitioningRange>(
          map['ranges'],
          (value) => GetTableRangePartitioningRange.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
