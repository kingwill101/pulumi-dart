// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_capacity.dart';
import 'autoscale_recurrence.dart';

/// The autoscale request parameters
class Autoscale {
  /// Parameters for load-based autoscale
  final pulumi.Input<AutoscaleCapacity>? capacity;
  /// Parameters for schedule-based autoscale
  final pulumi.Input<AutoscaleRecurrence>? recurrence;

  /// Creates a new [Autoscale].
  /// [capacity] Parameters for load-based autoscale
  /// [recurrence] Parameters for schedule-based autoscale
  Autoscale({
    this.capacity,
    this.recurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?pulumi.Input.mapOptionalInputValue<AutoscaleCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'recurrence': ?pulumi.Input.mapOptionalInputValue<AutoscaleRecurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
    };
  }

  factory Autoscale.fromMap(Map<String, dynamic> map) {
    return Autoscale(
      capacity: map['capacity'] == null ? null : (AutoscaleCapacity.fromMap((map['capacity'] as Map).cast<String, dynamic>())).input(),
      recurrence: map['recurrence'] == null ? null : (AutoscaleRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

