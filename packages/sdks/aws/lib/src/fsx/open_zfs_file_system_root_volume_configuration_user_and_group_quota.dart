// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota {
  /// The ID of the user or group. Valid values between `0` and `2147483647`
  final pulumi.Input<int> id;

  /// The amount of storage that the user or group can use in gibibytes (GiB). Valid values between `0` and `2147483647`
  final pulumi.Input<int> storageCapacityQuotaGib;

  /// A value that specifies whether the quota applies to a user or group. Valid values are `USER` or `GROUP`.
  final pulumi.Input<String> type;

  /// Creates a new [OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota].
  /// [id] The ID of the user or group. Valid values between `0` and `2147483647`
  /// [storageCapacityQuotaGib] The amount of storage that the user or group can use in gibibytes (GiB). Valid values between `0` and `2147483647`
  /// [type] A value that specifies whether the quota applies to a user or group. Valid values are `USER` or `GROUP`.
  OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota({
    required this.id,
    required this.storageCapacityQuotaGib,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storageCapacityQuotaGib': storageCapacityQuotaGib,
      'type': type,
    };
  }

  factory OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota.fromMap(
    Map<String, dynamic> map,
  ) {
    return OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota(
      id: pulumi.Input.fromValue(map['id'] as int),
      storageCapacityQuotaGib: pulumi.Input.fromValue(
        map['storageCapacityQuotaGib'] as int,
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
