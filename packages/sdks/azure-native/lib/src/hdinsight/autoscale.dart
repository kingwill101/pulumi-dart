// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_capacity.dart';
import 'autoscale_recurrence.dart';

/// The autoscale request parameters
class Autoscale {
  /// Parameters for load-based autoscale
  final pulumi.Input<AutoscaleCapacity?>? capacity;
  /// Parameters for schedule-based autoscale
  final pulumi.Input<AutoscaleRecurrence?>? recurrence;

  /// Creates a new [Autoscale].
  /// [capacity] Parameters for load-based autoscale
  /// [recurrence] Parameters for schedule-based autoscale
  const Autoscale({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscaleRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
