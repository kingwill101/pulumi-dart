// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_group_properties.dart';
import 'port_group_properties.dart';
import 'vlan_group_properties.dart';

/// Dynamic match configuration object.
class CommonDynamicMatchConfiguration {
  /// List of IP Groups.
  final List<IpGroupProperties>? ipGroups;
  /// List of the port groups.
  final List<PortGroupProperties>? portGroups;
  /// List of vlan groups.
  final List<VlanGroupProperties>? vlanGroups;

  /// Creates a new [CommonDynamicMatchConfiguration].
  /// [ipGroups] List of IP Groups.
  /// [portGroups] List of the port groups.
  /// [vlanGroups] List of vlan groups.
  CommonDynamicMatchConfiguration({
    this.ipGroups,
    this.portGroups,
    this.vlanGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipGroups': ?ipGroups == null ? null : pulumi.Input.encodeList<IpGroupProperties, Map<String, dynamic>>(ipGroups!, (value) => value.toMap()),
      'portGroups': ?portGroups == null ? null : pulumi.Input.encodeList<PortGroupProperties, Map<String, dynamic>>(portGroups!, (value) => value.toMap()),
      'vlanGroups': ?vlanGroups == null ? null : pulumi.Input.encodeList<VlanGroupProperties, Map<String, dynamic>>(vlanGroups!, (value) => value.toMap()),
    };
  }

  factory CommonDynamicMatchConfiguration.fromMap(Map<String, dynamic> map) {
    return CommonDynamicMatchConfiguration(
      ipGroups: map['ipGroups'] == null ? null : pulumi.Input.decodeList<IpGroupProperties>(map['ipGroups'], (value) => IpGroupProperties.fromMap((value as Map).cast<String, dynamic>())),
      portGroups: map['portGroups'] == null ? null : pulumi.Input.decodeList<PortGroupProperties>(map['portGroups'], (value) => PortGroupProperties.fromMap((value as Map).cast<String, dynamic>())),
      vlanGroups: map['vlanGroups'] == null ? null : pulumi.Input.decodeList<VlanGroupProperties>(map['vlanGroups'], (value) => VlanGroupProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

