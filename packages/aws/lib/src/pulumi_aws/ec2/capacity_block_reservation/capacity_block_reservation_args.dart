// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../capacity_block_reservation_timeouts/capacity_block_reservation_timeouts.dart';

/// The set of arguments for CapacityBlockReservation.
class CapacityBlockReservationArgs {
  /// The Capacity Block Reservation ID.
  final pulumi.Input<String> capacityBlockOfferingId;

  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  final pulumi.Input<String> instancePlatform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CapacityBlockReservationTimeouts>? timeouts;

  CapacityBlockReservationArgs({
    required this.capacityBlockOfferingId,
    required this.instancePlatform,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityBlockOfferingId'] = capacityBlockOfferingId;
    map['instancePlatform'] = instancePlatform;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          CapacityBlockReservationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CapacityBlockReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityBlockReservationArgs(
      capacityBlockOfferingId:
          pulumi.Input.asInput<String>(map['capacityBlockOfferingId']),
      instancePlatform: pulumi.Input.asInput<String>(map['instancePlatform']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<CapacityBlockReservationTimeouts>(
          map['timeouts']),
    );
  }
}
