// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_snapshot_restore_timeouts.dart';

/// Input properties used for looking up and filtering FastSnapshotRestore resources.
class FastSnapshotRestoreState {
  /// Availability zone in which to enable fast snapshot restores.
  final pulumi.Input<String>? availabilityZone;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the snapshot.
  final pulumi.Input<String>? snapshotId;

  /// State of fast snapshot restores. Valid values are `enabling`, `optimizing`, `enabled`, `disabling`, `disabled`.
  final pulumi.Input<String>? state;
  final pulumi.Input<FastSnapshotRestoreTimeouts>? timeouts;

  /// Creates a new [FastSnapshotRestoreState].
  /// [availabilityZone] Availability zone in which to enable fast snapshot restores.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] ID of the snapshot.
  /// [state] State of fast snapshot restores. Valid values are `enabling`, `optimizing`, `enabled`, `disabling`, `disabled`.
  /// [timeouts] Optional.
  FastSnapshotRestoreState({
    this.availabilityZone,
    this.region,
    this.snapshotId,
    this.state,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'region': ?region,
      'snapshotId': ?snapshotId,
      'state': ?state,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            FastSnapshotRestoreTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory FastSnapshotRestoreState.fromMap(Map<String, dynamic> map) {
    return FastSnapshotRestoreState(
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshotId: (() {
        final guardedValue = map['snapshotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FastSnapshotRestoreTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
