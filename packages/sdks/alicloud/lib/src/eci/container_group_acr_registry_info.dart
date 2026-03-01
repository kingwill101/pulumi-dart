// ignore_for_file: unused_element, unnecessary_cast


class ContainerGroupAcrRegistryInfo {
  /// The domain name of the ACR Enterprise Edition instance. Defaults to all domain names of the corresponding instance. Support specifying individual domain names, multiple separated by half comma.
  final List<String>? domains;
  /// The ACR enterprise edition example ID.
  final String? instanceId;
  /// The name of the ACR enterprise edition instance.
  final String? instanceName;
  /// The ACR enterprise edition instance belongs to the region.
  final String? regionId;

  /// Creates a new [ContainerGroupAcrRegistryInfo].
  /// [domains] The domain name of the ACR Enterprise Edition instance. Defaults to all domain names of the corresponding instance. Support specifying individual domain names, multiple separated by half comma.
  /// [instanceId] The ACR enterprise edition example ID.
  /// [instanceName] The name of the ACR enterprise edition instance.
  /// [regionId] The ACR enterprise edition instance belongs to the region.
  ContainerGroupAcrRegistryInfo({
    this.domains,
    this.instanceId,
    this.instanceName,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?domains,
      'instanceId': ?instanceId,
      'instanceName': ?instanceName,
      'regionId': ?regionId,
    };
  }

  factory ContainerGroupAcrRegistryInfo.fromMap(Map<String, dynamic> map) {
    return ContainerGroupAcrRegistryInfo(
      domains: map['domains'] == null ? null : (map['domains'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
    );
  }
}

