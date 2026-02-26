// ignore_for_file: unused_element, unnecessary_cast

class OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota {
  /// The ID of the user or group. Valid values between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`2147483647`" pulumi-lang-dotnet="`2147483647`" pulumi-lang-go="`2147483647`" pulumi-lang-python="`2147483647`" pulumi-lang-yaml="`2147483647`" pulumi-lang-java="`2147483647`">`2147483647`</span>
  final int id;

  /// The amount of storage that the user or group can use in gibibytes (GiB). Valid values between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`2147483647`" pulumi-lang-dotnet="`2147483647`" pulumi-lang-go="`2147483647`" pulumi-lang-python="`2147483647`" pulumi-lang-yaml="`2147483647`" pulumi-lang-java="`2147483647`">`2147483647`</span>
  final int storageCapacityQuotaGib;

  /// A value that specifies whether the quota applies to a user or group. Valid values are `USER` or `GROUP`.
  final String type;

  OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota({
    required this.id,
    required this.storageCapacityQuotaGib,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['storageCapacityQuotaGib'] = storageCapacityQuotaGib;
    map['type'] = type;
    return map;
  }

  factory OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota.fromMap(
      Map<String, dynamic> map) {
    return OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota(
      id: map['id'] as int,
      storageCapacityQuotaGib: map['storageCapacityQuotaGib'] as int,
      type: map['type'] as String,
    );
  }
}
