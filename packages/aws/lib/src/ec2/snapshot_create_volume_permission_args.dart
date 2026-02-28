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
    required String accountId,
    String? region,
    required String snapshotId,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        region = pulumi.Input.asOptionalInput<String>(region),
        snapshotId = pulumi.Input.asInput<String>(snapshotId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['snapshotId'] = snapshotId;
    return map;
  }

  factory SnapshotCreateVolumePermissionArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotCreateVolumePermissionArgs(
      accountId: map['accountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      snapshotId: map['snapshotId'] as String,
    );
  }
}
