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
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? region,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<String>? state,
    pulumi.Output<FastSnapshotRestoreTimeouts>? timeouts,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      state = pulumi.Input.asOptionalInput<String>(state),
      timeouts = pulumi.Input.asOptionalInput<FastSnapshotRestoreTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'region': ?region,
      'snapshotId': ?snapshotId,
      'state': ?state,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FastSnapshotRestoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FastSnapshotRestoreState.fromMap(Map<String, dynamic> map) {
    return FastSnapshotRestoreState(
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<FastSnapshotRestoreTimeouts>(FastSnapshotRestoreTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

