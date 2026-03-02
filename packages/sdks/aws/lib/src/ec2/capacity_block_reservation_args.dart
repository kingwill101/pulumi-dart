// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_block_reservation_timeouts.dart';

/// {@template pulumi_ec2_capacity_block_reservation_capacity_block_reservation_args_doc}
/// The set of arguments for CapacityBlockReservation.
/// {@endtemplate}
/// {@macro pulumi_ec2_capacity_block_reservation_capacity_block_reservation_args_doc}
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

  /// Creates a new [CapacityBlockReservationArgs].
  /// [capacityBlockOfferingId] The Capacity Block Reservation ID.
  /// [instancePlatform] The type of operating system for which to reserve capacity. Valid options are `Linux/UNIX`, `Red Hat Enterprise Linux`, `SUSE Linux`, `Windows`, `Windows with SQL Server`, `Windows with SQL Server Enterprise`, `Windows with SQL Server Standard` or `Windows with SQL Server Web`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  CapacityBlockReservationArgs({
    required this.capacityBlockOfferingId,
    required this.instancePlatform,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityBlockOfferingId': capacityBlockOfferingId,
      'instancePlatform': instancePlatform,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityBlockReservationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CapacityBlockReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityBlockReservationArgs(
      capacityBlockOfferingId: (map['capacityBlockOfferingId'] as String).input(),
      instancePlatform: (map['instancePlatform'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((CapacityBlockReservationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

