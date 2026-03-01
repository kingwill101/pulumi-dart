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
    pulumi.Output<int>? allocatedDpus,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? targetDpus,
    pulumi.Output<CapacityReservationTimeouts>? timeouts,
  }) :
      allocatedDpus = pulumi.Input.asOptionalInput<int>(allocatedDpus),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetDpus = pulumi.Input.asOptionalInput<int>(targetDpus),
      timeouts = pulumi.Input.asOptionalInput<CapacityReservationTimeouts>(timeouts);

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
      allocatedDpus: map['allocatedDpus'] == null ? null : pulumi.Output.create<int>(map['allocatedDpus'] as int),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetDpus: map['targetDpus'] == null ? null : pulumi.Output.create<int>(map['targetDpus'] as int),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CapacityReservationTimeouts>(CapacityReservationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

