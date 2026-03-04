// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerGroupAcrRegistryInfo {
  /// The domain name of the ACR Enterprise Edition instance. Defaults to all domain names of the corresponding instance. Support specifying individual domain names, multiple separated by half comma.
  final pulumi.Input<List<String>>? domains;

  /// The ACR enterprise edition example ID.
  final pulumi.Input<String>? instanceId;

  /// The name of the ACR enterprise edition instance.
  final pulumi.Input<String>? instanceName;

  /// The ACR enterprise edition instance belongs to the region.
  final pulumi.Input<String>? regionId;

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
      domains: (() {
        final guardedValue = map['domains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
