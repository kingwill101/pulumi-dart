// ignore_for_file: unused_element, unnecessary_cast


class OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota {
  /// The ID of the user or group. Valid values between `0` and `2147483647`
  final int id;
  /// The amount of storage that the user or group can use in gibibytes (GiB). Valid values between `0` and `2147483647`
  final int storageCapacityQuotaGib;
  /// A value that specifies whether the quota applies to a user or group. Valid values are `USER` or `GROUP`.
  final String type;

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

  factory OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota(
      id: map['id'] as int,
      storageCapacityQuotaGib: map['storageCapacityQuotaGib'] as int,
      type: map['type'] as String,
    );
  }
}

