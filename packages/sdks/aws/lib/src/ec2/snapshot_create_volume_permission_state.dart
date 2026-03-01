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
  SnapshotCreateVolumePermissionState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? snapshotId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'region': ?region,
      'snapshotId': ?snapshotId,
    };
  }

  factory SnapshotCreateVolumePermissionState.fromMap(Map<String, dynamic> map) {
    return SnapshotCreateVolumePermissionState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
    );
  }
}

