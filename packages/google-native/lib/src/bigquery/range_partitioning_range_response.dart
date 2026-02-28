// ignore_for_file: unused_element, unnecessary_cast

/// [TrustedTester] [Required] Defines the ranges for range partitioning.
class RangePartitioningRangeResponse {
  /// [TrustedTester] [Required] The end of range partitioning, exclusive.
  final String end;

  /// [TrustedTester] [Required] The width of each interval.
  final String interval;

  /// [TrustedTester] [Required] The start of range partitioning, inclusive.
  final String start;

  /// Creates a new [RangePartitioningRangeResponse].
  /// [end] [TrustedTester] [Required] The end of range partitioning, exclusive.
  /// [interval] [TrustedTester] [Required] The width of each interval.
  /// [start] [TrustedTester] [Required] The start of range partitioning, inclusive.
  RangePartitioningRangeResponse({
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

  factory RangePartitioningRangeResponse.fromMap(Map<String, dynamic> map) {
    return RangePartitioningRangeResponse(
      end: map['end'] as String,
      interval: map['interval'] as String,
      start: map['start'] as String,
    );
  }
}
