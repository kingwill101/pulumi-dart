// ignore_for_file: unused_element, unnecessary_cast


class AlertConditionTerm {
  /// In minutes, must be in the range of 5 to 120, inclusive.
  final int duration;
  /// One of (above, below, equal). Defaults to equal.
  final String? operator;
  /// One of (critical, warning). Defaults to critical.
  final String? priority;
  /// Must be 0 or greater.
  final double threshold;
  /// One of (all, any).
  final String timeFunction;

  /// Creates a new [AlertConditionTerm].
  /// [duration] In minutes, must be in the range of 5 to 120, inclusive.
  /// [operator] One of (above, below, equal). Defaults to equal.
  /// [priority] One of (critical, warning). Defaults to critical.
  /// [threshold] Must be 0 or greater.
  /// [timeFunction] One of (all, any).
  AlertConditionTerm({
    required this.duration,
    this.operator,
    this.priority,
    required this.threshold,
    required this.timeFunction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'operator': ?operator,
      'priority': ?priority,
      'threshold': threshold,
      'timeFunction': timeFunction,
    };
  }

  factory AlertConditionTerm.fromMap(Map<String, dynamic> map) {
    return AlertConditionTerm(
      duration: map['duration'] as int,
      operator: map['operator'] == null ? null : map['operator'] as String,
      priority: map['priority'] == null ? null : map['priority'] as String,
      threshold: map['threshold'] as double,
      timeFunction: map['timeFunction'] as String,
    );
  }
}

