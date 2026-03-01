// ignore_for_file: unused_element, unnecessary_cast

import 'autoscale_capacity.dart';
import 'autoscale_recurrence.dart';

/// The autoscale request parameters
class Autoscale {
  /// Parameters for load-based autoscale
  final AutoscaleCapacity? capacity;
  /// Parameters for schedule-based autoscale
  final AutoscaleRecurrence? recurrence;

  /// Creates a new [Autoscale].
  /// [capacity] Parameters for load-based autoscale
  /// [recurrence] Parameters for schedule-based autoscale
  Autoscale({
    this.capacity,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity == null ? null : capacity!.toMap(),
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory Autoscale.fromMap(Map<String, dynamic> map) {
    return Autoscale(
      capacity: map['capacity'] == null ? null : AutoscaleCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      recurrence: map['recurrence'] == null ? null : AutoscaleRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

