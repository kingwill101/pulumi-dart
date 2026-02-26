// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../capacity_block_reservation_timeouts/capacity_block_reservation_timeouts.dart';

/// The set of arguments for CapacityBlockReservation.
class CapacityBlockReservationArgs {
  /// The Capacity Block Reservation ID.
  final Input<String> capacityBlockOfferingId;

  /// The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  final Input<String> instancePlatform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<CapacityBlockReservationTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<
          CapacityBlockReservationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CapacityBlockReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityBlockReservationArgs(
      capacityBlockOfferingId:
          Input.asInput<String>(map['capacityBlockOfferingId']),
      instancePlatform: Input.asInput<String>(map['instancePlatform']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<CapacityBlockReservationTimeouts>(
          map['timeouts']),
    );
  }
}
