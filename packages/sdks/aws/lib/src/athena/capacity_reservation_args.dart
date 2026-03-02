// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_timeouts.dart';

/// {@template pulumi_athena_capacity_reservation_capacity_reservation_args_doc}
/// The set of arguments for CapacityReservation.
/// {@endtemplate}
/// {@macro pulumi_athena_capacity_reservation_capacity_reservation_args_doc}
class CapacityReservationArgs {
  /// Name of the capacity reservation.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Number of data processing units requested. Must be at least `24` units.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> targetDpus;
  final pulumi.Input<CapacityReservationTimeouts>? timeouts;

  /// Creates a new [CapacityReservationArgs].
  /// [name] Name of the capacity reservation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetDpus] Number of data processing units requested. Must be at least `24` units.
  /// [timeouts] Optional.
  CapacityReservationArgs({
    this.name,
    this.region,
    this.tags,
    required this.targetDpus,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'targetDpus': targetDpus,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityReservationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CapacityReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationArgs(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      targetDpus: (map['targetDpus'] as int).input(),
      timeouts: map['timeouts'] == null ? null : ((CapacityReservationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

