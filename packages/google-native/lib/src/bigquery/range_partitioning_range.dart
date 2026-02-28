// ignore_for_file: unused_element, unnecessary_cast

/// [TrustedTester] [Required] Defines the ranges for range partitioning.
class RangePartitioningRange {
  /// [TrustedTester] [Required] The end of range partitioning, exclusive.
  final String? end;

  /// [TrustedTester] [Required] The width of each interval.
  final String? interval;

  /// [TrustedTester] [Required] The start of range partitioning, inclusive.
  final String? start;

  /// Creates a new [RangePartitioningRange].
  /// [end] [TrustedTester] [Required] The end of range partitioning, exclusive.
  /// [interval] [TrustedTester] [Required] The width of each interval.
  /// [start] [TrustedTester] [Required] The start of range partitioning, inclusive.
  RangePartitioningRange({
    this.end,
    this.interval,
    this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endValue = end;
    if (endValue != null) {
      map['end'] = endValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final startValue = start;
    if (startValue != null) {
      map['start'] = startValue;
    }
    return map;
  }

  factory RangePartitioningRange.fromMap(Map<String, dynamic> map) {
    return RangePartitioningRange(
      end: map['end'] == null ? null : map['end'] as String,
      interval: map['interval'] == null ? null : map['interval'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}
