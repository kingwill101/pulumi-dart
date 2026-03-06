// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnapshotCreateVolumePermission resources.
class SnapshotCreateVolumePermissionState {
  /// An AWS Account ID to add create volume permissions. The AWS Account cannot be the snapshot's owner
  final pulumi.Input<String>? accountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A snapshot ID
  final pulumi.Input<String>? snapshotId;

  /// Creates a new [SnapshotCreateVolumePermissionState].
  /// [accountId] An AWS Account ID to add create volume permissions. The AWS Account cannot be the snapshot's owner
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] A snapshot ID
  const SnapshotCreateVolumePermissionState({
    this.accountId,
    this.region,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'region': ?region,
      'snapshotId': ?snapshotId,
    };
  }

  factory SnapshotCreateVolumePermissionState.fromMap(Map<String, dynamic> map) {
    return SnapshotCreateVolumePermissionState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

