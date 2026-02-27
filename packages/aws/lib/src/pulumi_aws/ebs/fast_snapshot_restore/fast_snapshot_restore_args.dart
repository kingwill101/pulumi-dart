// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../fast_snapshot_restore_timeouts/fast_snapshot_restore_timeouts.dart';

/// The set of arguments for FastSnapshotRestore.
class FastSnapshotRestoreArgs {
  /// Availability zone in which to enable fast snapshot restores.
  final pulumi.Input<String> availabilityZone;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the snapshot.
  final pulumi.Input<String> snapshotId;
  final pulumi.Input<FastSnapshotRestoreTimeouts>? timeouts;

  FastSnapshotRestoreArgs({
    required this.availabilityZone,
    this.region,
    required this.snapshotId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['snapshotId'] = snapshotId;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          FastSnapshotRestoreTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FastSnapshotRestoreArgs.fromMap(Map<String, dynamic> map) {
    return FastSnapshotRestoreArgs(
      availabilityZone: pulumi.Input.asInput<String>(map['availabilityZone']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotId: pulumi.Input.asInput<String>(map['snapshotId']),
      timeouts: pulumi.Input.asOptionalInput<FastSnapshotRestoreTimeouts>(
          map['timeouts']),
    );
  }
}
