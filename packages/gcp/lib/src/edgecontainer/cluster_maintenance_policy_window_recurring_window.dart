// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_maintenance_policy_window_recurring_window_window.dart';

class ClusterMaintenancePolicyWindowRecurringWindow {
  /// An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
  /// this window recurs. They go on for the span of time between the start and
  /// end time.
  final String? recurrence;

  /// Represents an arbitrary window of time.
  /// Structure is documented below.
  final ClusterMaintenancePolicyWindowRecurringWindowWindow? window;

  /// Creates a new [ClusterMaintenancePolicyWindowRecurringWindow].
  /// [recurrence] An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how
  /// [window] Represents an arbitrary window of time.
  ClusterMaintenancePolicyWindowRecurringWindow({this.recurrence, this.window});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': ?recurrence,
      'window': ?window == null ? null : window!.toMap(),
    };
  }

  factory ClusterMaintenancePolicyWindowRecurringWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMaintenancePolicyWindowRecurringWindow(
      recurrence: map['recurrence'] == null
          ? null
          : map['recurrence'] as String,
      window: map['window'] == null
          ? null
          : ClusterMaintenancePolicyWindowRecurringWindowWindow.fromMap(
              (map['window'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
