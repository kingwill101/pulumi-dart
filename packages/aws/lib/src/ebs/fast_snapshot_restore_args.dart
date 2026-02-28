// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_snapshot_restore_timeouts.dart';

/// {@template pulumi_ebs_fast_snapshot_restore_fast_snapshot_restore_args_doc}
/// The set of arguments for FastSnapshotRestore.
/// {@endtemplate}
/// {@macro pulumi_ebs_fast_snapshot_restore_fast_snapshot_restore_args_doc}
class FastSnapshotRestoreArgs {
  /// Availability zone in which to enable fast snapshot restores.
  final pulumi.Input<String> availabilityZone;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the snapshot.
  final pulumi.Input<String> snapshotId;
  final pulumi.Input<FastSnapshotRestoreTimeouts>? timeouts;

  /// Creates a new [FastSnapshotRestoreArgs].
  /// [availabilityZone] Availability zone in which to enable fast snapshot restores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] ID of the snapshot.
  /// [timeouts] Optional.
  FastSnapshotRestoreArgs({
    required String availabilityZone,
    String? region,
    required String snapshotId,
    FastSnapshotRestoreTimeouts? timeouts,
  }) :
      availabilityZone = pulumi.Input.asInput<String>(availabilityZone),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotId = pulumi.Input.asInput<String>(snapshotId),
      timeouts = pulumi.Input.asOptionalInput<FastSnapshotRestoreTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'region': ?region,
      'snapshotId': snapshotId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FastSnapshotRestoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FastSnapshotRestoreArgs.fromMap(Map<String, dynamic> map) {
    return FastSnapshotRestoreArgs(
      availabilityZone: map['availabilityZone'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      snapshotId: map['snapshotId'] as String,
      timeouts: map['timeouts'] == null ? null : FastSnapshotRestoreTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

