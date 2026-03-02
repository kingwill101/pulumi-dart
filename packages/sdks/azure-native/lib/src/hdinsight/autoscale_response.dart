// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_capacity_response.dart';
import 'autoscale_recurrence_response.dart';

/// The autoscale request parameters
class AutoscaleResponse {
  /// Parameters for load-based autoscale
  final pulumi.Input<AutoscaleCapacityResponse>? capacity;
  /// Parameters for schedule-based autoscale
  final pulumi.Input<AutoscaleRecurrenceResponse>? recurrence;

  /// Creates a new [AutoscaleResponse].
  /// [capacity] Parameters for load-based autoscale
  /// [recurrence] Parameters for schedule-based autoscale
  AutoscaleResponse({
    this.capacity,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?pulumi.Input.mapOptionalInputValue<AutoscaleCapacityResponse, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'recurrence': ?pulumi.Input.mapOptionalInputValue<AutoscaleRecurrenceResponse, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
    };
  }

  factory AutoscaleResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleResponse(
      capacity: map['capacity'] == null ? null : (AutoscaleCapacityResponse.fromMap((map['capacity'] as Map).cast<String, dynamic>())).input(),
      recurrence: map['recurrence'] == null ? null : (AutoscaleRecurrenceResponse.fromMap((map['recurrence'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

