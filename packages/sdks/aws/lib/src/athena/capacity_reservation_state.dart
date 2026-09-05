// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_timeouts.dart';

/// Input properties used for looking up and filtering CapacityReservation resources.
class CapacityReservationState {
  /// Number of data processing units currently allocated.
  final pulumi.Input<int?>? allocatedDpus;
  /// ARN of the Capacity Reservation.
  final pulumi.Input<String?>? arn;
  /// Name of the capacity reservation.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the capacity reservation.
  final pulumi.Input<String?>? status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Number of data processing units requested. Must be at least `24` units.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int?>? targetDpus;
  final pulumi.Input<CapacityReservationTimeouts?>? timeouts;

  /// Creates a new [CapacityReservationState].
  /// [allocatedDpus] Number of data processing units currently allocated.
  /// [arn] ARN of the Capacity Reservation.
  /// [name] Name of the capacity reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the capacity reservation.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetDpus] Number of data processing units requested. Must be at least `24` units.
  /// [timeouts] Optional.
  const CapacityReservationState({
    this.allocatedDpus,
    this.arn,
    this.name,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.targetDpus,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedDpus': ?allocatedDpus,
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetDpus': ?targetDpus,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityReservationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CapacityReservationState.fromMap(Map<String, dynamic> map) {
    return CapacityReservationState(
      allocatedDpus: (() { final guardedValue = map['allocatedDpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDpus: (() { final guardedValue = map['targetDpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityReservationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
