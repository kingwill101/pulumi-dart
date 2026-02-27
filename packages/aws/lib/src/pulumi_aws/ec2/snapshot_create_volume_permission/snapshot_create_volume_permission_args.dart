// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SnapshotCreateVolumePermission.
class SnapshotCreateVolumePermissionArgs {
  /// An AWS Account ID to add create volume permissions. The AWS Account cannot be the snapshot's owner
  final pulumi.Input<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A snapshot ID
  final pulumi.Input<String> snapshotId;

  SnapshotCreateVolumePermissionArgs({
    required this.accountId,
    this.region,
    required this.snapshotId,
  });

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
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotId: pulumi.Input.asInput<String>(map['snapshotId']),
    );
  }
}
