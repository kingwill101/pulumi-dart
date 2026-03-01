// ignore_for_file: unused_element, unnecessary_cast

import 'autoscale_capacity_response.dart';
import 'autoscale_recurrence_response.dart';

/// The autoscale request parameters
class AutoscaleResponse {
  /// Parameters for load-based autoscale
  final AutoscaleCapacityResponse? capacity;
  /// Parameters for schedule-based autoscale
  final AutoscaleRecurrenceResponse? recurrence;

  /// Creates a new [AutoscaleResponse].
  /// [capacity] Parameters for load-based autoscale
  /// [recurrence] Parameters for schedule-based autoscale
  AutoscaleResponse({
    this.capacity,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity == null ? null : capacity!.toMap(),
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
    };
  }

  factory AutoscaleResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleResponse(
      capacity: map['capacity'] == null ? null : AutoscaleCapacityResponse.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      recurrence: map['recurrence'] == null ? null : AutoscaleRecurrenceResponse.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

