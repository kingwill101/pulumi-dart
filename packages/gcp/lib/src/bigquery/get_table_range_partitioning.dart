// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_range_partitioning_range.dart';

class GetTableRangePartitioning {
  /// The field used to determine how to create a range-based partition.
  final String field;
  /// Information required to partition based on ranges. Structure is documented below.
  final List<GetTableRangePartitioningRange> ranges;

  /// Creates a new [GetTableRangePartitioning].
  /// [field] The field used to determine how to create a range-based partition.
  /// [ranges] Information required to partition based on ranges. Structure is documented below.
  GetTableRangePartitioning({
    required this.field,
    required this.ranges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'ranges': pulumi.Input.encodeList<GetTableRangePartitioningRange, Map<String, dynamic>>(ranges, (value) => value.toMap()),
    };
  }

  factory GetTableRangePartitioning.fromMap(Map<String, dynamic> map) {
    return GetTableRangePartitioning(
      field: map['field'] as String,
      ranges: pulumi.Input.decodeList<GetTableRangePartitioningRange>(map['ranges'], (value) => GetTableRangePartitioningRange.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

