// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_group_properties.dart';
import 'port_group_properties.dart';
import 'vlan_group_properties.dart';

/// Dynamic match configuration object.
class CommonDynamicMatchConfiguration {
  /// List of IP Groups.
  final pulumi.Input<List<IpGroupProperties>>? ipGroups;
  /// List of the port groups.
  final pulumi.Input<List<PortGroupProperties>>? portGroups;
  /// List of vlan groups.
  final pulumi.Input<List<VlanGroupProperties>>? vlanGroups;

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
      'ipGroups': ?pulumi.Input.mapOptionalInputValue<List<IpGroupProperties>, List<Map<String, dynamic>>>(ipGroups, (value) => pulumi.Input.encodeList<IpGroupProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portGroups': ?pulumi.Input.mapOptionalInputValue<List<PortGroupProperties>, List<Map<String, dynamic>>>(portGroups, (value) => pulumi.Input.encodeList<PortGroupProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanGroups': ?pulumi.Input.mapOptionalInputValue<List<VlanGroupProperties>, List<Map<String, dynamic>>>(vlanGroups, (value) => pulumi.Input.encodeList<VlanGroupProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CommonDynamicMatchConfiguration.fromMap(Map<String, dynamic> map) {
    return CommonDynamicMatchConfiguration(
      ipGroups: map['ipGroups'] == null ? null : (pulumi.Input.decodeList<IpGroupProperties>(map['ipGroups']!, (value) => IpGroupProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portGroups: map['portGroups'] == null ? null : (pulumi.Input.decodeList<PortGroupProperties>(map['portGroups']!, (value) => PortGroupProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vlanGroups: map['vlanGroups'] == null ? null : (pulumi.Input.decodeList<VlanGroupProperties>(map['vlanGroups']!, (value) => VlanGroupProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

