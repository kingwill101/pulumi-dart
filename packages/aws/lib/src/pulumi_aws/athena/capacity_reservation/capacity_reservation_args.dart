// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../capacity_reservation_timeouts/capacity_reservation_timeouts.dart';

/// The set of arguments for CapacityReservation.
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

  CapacityReservationArgs({
    this.name,
    this.region,
    this.tags,
    required this.targetDpus,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetDpus'] = targetDpus;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          CapacityReservationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CapacityReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetDpus: pulumi.Input.asInput<int>(map['targetDpus']),
      timeouts: pulumi.Input.asOptionalInput<CapacityReservationTimeouts>(
          map['timeouts']),
    );
  }
}
