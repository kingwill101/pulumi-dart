// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_snapshot_create_volume_permission_snapshot_create_volume_permission_args_doc}
/// The set of arguments for SnapshotCreateVolumePermission.
/// {@endtemplate}
/// {@macro pulumi_ec2_snapshot_create_volume_permission_snapshot_create_volume_permission_args_doc}
class SnapshotCreateVolumePermissionArgs {
  /// An AWS Account ID to add create volume permissions. The AWS Account cannot be the snapshot's owner
  final pulumi.Input<String> accountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A snapshot ID
  final pulumi.Input<String> snapshotId;

  /// Creates a new [SnapshotCreateVolumePermissionArgs].
  /// [accountId] An AWS Account ID to add create volume permissions. The AWS Account cannot be the snapshot's owner
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotId] A snapshot ID
  SnapshotCreateVolumePermissionArgs({
    required this.accountId,
    this.region,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'region': ?region,
      'snapshotId': snapshotId,
    };
  }

  factory SnapshotCreateVolumePermissionArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCreateVolumePermissionArgs(
      accountId: (map['accountId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      snapshotId: (map['snapshotId'] as String).input(),
    );
  }
}

