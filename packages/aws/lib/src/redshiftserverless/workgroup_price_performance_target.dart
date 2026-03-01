// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupPricePerformanceTarget {
  /// Whether to enable price-performance scaling.
  final bool enabled;

  /// The price-performance scaling level. Valid values are `1` (LOW_COST), `25` (ECONOMICAL), `50` (BALANCED), `75` (RESOURCEFUL), and `100` (HIGH_PERFORMANCE).
  final int? level;

  /// Creates a new [WorkgroupPricePerformanceTarget].
  /// [enabled] Whether to enable price-performance scaling.
  /// [level] The price-performance scaling level. Valid values are `1` (LOW_COST), `25` (ECONOMICAL), `50` (BALANCED), `75` (RESOURCEFUL), and `100` (HIGH_PERFORMANCE).
  WorkgroupPricePerformanceTarget({required this.enabled, this.level});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'level': ?level};
  }

  factory WorkgroupPricePerformanceTarget.fromMap(Map<String, dynamic> map) {
    return WorkgroupPricePerformanceTarget(
      enabled: map['enabled'] as bool,
      level: map['level'] == null ? null : map['level'] as int,
    );
  }
}
