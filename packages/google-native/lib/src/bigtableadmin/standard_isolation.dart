// ignore_for_file: unused_element, unnecessary_cast

import 'standard_isolation_priority.dart';

/// Standard options for isolating this app profile's traffic from other use cases.
class StandardIsolation {
  /// The priority of requests sent using this app profile.
  final StandardIsolationPriority? priority;

  /// Creates a new [StandardIsolation].
  /// [priority] The priority of requests sent using this app profile.
  StandardIsolation({
    this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue.value;
    }
    return map;
  }

  factory StandardIsolation.fromMap(Map<String, dynamic> map) {
    return StandardIsolation(
      priority: map['priority'] == null
          ? null
          : StandardIsolationPriority.fromValue(map['priority'] as String),
    );
  }
}
