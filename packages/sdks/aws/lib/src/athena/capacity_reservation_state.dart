// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_timeouts.dart';

/// Input properties used for looking up and filtering CapacityReservation resources.
class CapacityReservationState {
  /// Number of data processing units currently allocated.
  final pulumi.Input<int>? allocatedDpus;
  /// ARN of the Capacity Reservation.
  final pulumi.Input<String>? arn;
  /// Name of the capacity reservation.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the capacity reservation.
  final pulumi.Input<String>? status;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Number of data processing units requested. Must be at least `24` units.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? targetDpus;
  final pulumi.Input<CapacityReservationTimeouts>? timeouts;

  /// Creates a new [CapacityReservationState].
  /// [allocatedDpus] Number of data processing units currently allocated.
  /// [arn] ARN of the Capacity Reservation.
  /// [name] Name of the capacity reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the capacity reservation.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetDpus] Number of data processing units requested. Must be at least `24` units.
  /// [timeouts] Optional.
  CapacityReservationState({
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
      allocatedDpus: map['allocatedDpus'] == null ? null : ((map['allocatedDpus'] as int).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targetDpus: map['targetDpus'] == null ? null : ((map['targetDpus'] as int).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((CapacityReservationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

