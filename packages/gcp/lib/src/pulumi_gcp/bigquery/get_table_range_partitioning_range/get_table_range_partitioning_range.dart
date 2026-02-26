// ignore_for_file: unused_element, unnecessary_cast

class GetTableRangePartitioningRange {
  /// End of the range partitioning, exclusive.
  final int end;

  /// The width of each range within the partition.
  final int interval;

  /// Start of the range partitioning, inclusive.
  final int start;

  GetTableRangePartitioningRange({
    required this.end,
    required this.interval,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['interval'] = interval;
    map['start'] = start;
    return map;
  }

  factory GetTableRangePartitioningRange.fromMap(Map<String, dynamic> map) {
    return GetTableRangePartitioningRange(
      end: map['end'] as int,
      interval: map['interval'] as int,
      start: map['start'] as int,
    );
  }
}
