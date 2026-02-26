// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SnapshotCreateVolumePermission.
class SnapshotCreateVolumePermissionArgs {
  /// An AWS Account ID to add create volume permissions. The AWS Account cannot be the snapshot's owner
  final Input<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A snapshot ID
  final Input<String> snapshotId;

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
      accountId: Input.asInput<String>(map['accountId']),
      region: Input.asOptionalInput<String>(map['region']),
      snapshotId: Input.asInput<String>(map['snapshotId']),
    );
  }
}
