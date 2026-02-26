// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition {
  /// The partitioning column.
  final String column;

  /// The ending value for range partitioning (exclusive).
  final int end;

  /// The interval of each range within the partition.
  final int interval;

  /// The starting value for range partitioning (inclusive).
  final int start;

  StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition({
    required this.column,
    required this.end,
    required this.interval,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    map['end'] = end;
    map['interval'] = interval;
    map['start'] = start;
    return map;
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition(
      column: map['column'] as String,
      end: map['end'] as int,
      interval: map['interval'] as int,
      start: map['start'] as int,
    );
  }
}
