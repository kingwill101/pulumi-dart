// ignore_for_file: unused_element, unnecessary_cast


class GetTableRangePartitioningRange {
  /// End of the range partitioning, exclusive.
  final int end;
  /// The width of each range within the partition.
  final int interval;
  /// Start of the range partitioning, inclusive.
  final int start;

  /// Creates a new [GetTableRangePartitioningRange].
  /// [end] End of the range partitioning, exclusive.
  /// [interval] The width of each range within the partition.
  /// [start] Start of the range partitioning, inclusive.
  GetTableRangePartitioningRange({
    required this.end,
    required this.interval,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'interval': interval,
      'start': start,
    };
  }

  factory GetTableRangePartitioningRange.fromMap(Map<String, dynamic> map) {
    return GetTableRangePartitioningRange(
      end: map['end'] as int,
      interval: map['interval'] as int,
      start: map['start'] as int,
    );
  }
}

