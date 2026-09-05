// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota {
  /// ID of the user or group. Valid values between `0` and `2147483647`
  final pulumi.Input<int> id;
  /// Amount of storage that the user or group can use in gibibytes (GiB). Valid values between `0` and `2147483647`
  final pulumi.Input<int> storageCapacityQuotaGib;
  /// Value that specifies whether the quota applies to a user or group. Valid values are `USER` or `GROUP`.
  final pulumi.Input<String> type;

  /// Creates a new [OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota].
  /// [id] ID of the user or group. Valid values between `0` and `2147483647`
  /// [storageCapacityQuotaGib] Amount of storage that the user or group can use in gibibytes (GiB). Valid values between `0` and `2147483647`
  /// [type] Value that specifies whether the quota applies to a user or group. Valid values are `USER` or `GROUP`.
  const OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota({
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

  factory OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota(
      id: pulumi.Input.fromValue((map['id'] as num).toInt()),
      storageCapacityQuotaGib: pulumi.Input.fromValue((map['storageCapacityQuotaGib'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
