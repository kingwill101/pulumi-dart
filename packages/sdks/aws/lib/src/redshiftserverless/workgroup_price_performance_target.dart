// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupPricePerformanceTarget {
  /// Whether to enable price-performance scaling.
  final pulumi.Input<bool> enabled;
  /// The price-performance scaling level. Valid values are `1` (LOW_COST), `25` (ECONOMICAL), `50` (BALANCED), `75` (RESOURCEFUL), and `100` (HIGH_PERFORMANCE).
  final pulumi.Input<int>? level;

  /// Creates a new [WorkgroupPricePerformanceTarget].
  /// [enabled] Whether to enable price-performance scaling.
  /// [level] The price-performance scaling level. Valid values are `1` (LOW_COST), `25` (ECONOMICAL), `50` (BALANCED), `75` (RESOURCEFUL), and `100` (HIGH_PERFORMANCE).
  WorkgroupPricePerformanceTarget({
    required this.enabled,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'level': ?level,
    };
  }

  factory WorkgroupPricePerformanceTarget.fromMap(Map<String, dynamic> map) {
    return WorkgroupPricePerformanceTarget(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

