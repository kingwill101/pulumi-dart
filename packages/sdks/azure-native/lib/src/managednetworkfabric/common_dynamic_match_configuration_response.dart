// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_group_properties_response.dart';
import 'port_group_properties_response.dart';
import 'vlan_group_properties_response.dart';

/// Dynamic match configuration object.
class CommonDynamicMatchConfigurationResponse {
  /// List of IP Groups.
  final pulumi.Input<List<IpGroupPropertiesResponse>>? ipGroups;
  /// List of the port groups.
  final pulumi.Input<List<PortGroupPropertiesResponse>>? portGroups;
  /// List of vlan groups.
  final pulumi.Input<List<VlanGroupPropertiesResponse>>? vlanGroups;

  /// Creates a new [CommonDynamicMatchConfigurationResponse].
  /// [ipGroups] List of IP Groups.
  /// [portGroups] List of the port groups.
  /// [vlanGroups] List of vlan groups.
  CommonDynamicMatchConfigurationResponse({
    this.ipGroups,
    this.portGroups,
    this.vlanGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipGroups': ?pulumi.Input.mapOptionalInputValue<List<IpGroupPropertiesResponse>, List<Map<String, dynamic>>>(ipGroups, (value) => pulumi.Input.encodeList<IpGroupPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portGroups': ?pulumi.Input.mapOptionalInputValue<List<PortGroupPropertiesResponse>, List<Map<String, dynamic>>>(portGroups, (value) => pulumi.Input.encodeList<PortGroupPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vlanGroups': ?pulumi.Input.mapOptionalInputValue<List<VlanGroupPropertiesResponse>, List<Map<String, dynamic>>>(vlanGroups, (value) => pulumi.Input.encodeList<VlanGroupPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CommonDynamicMatchConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CommonDynamicMatchConfigurationResponse(
      ipGroups: map['ipGroups'] == null ? null : (pulumi.Input.decodeList<IpGroupPropertiesResponse>(map['ipGroups'], (value) => IpGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portGroups: map['portGroups'] == null ? null : (pulumi.Input.decodeList<PortGroupPropertiesResponse>(map['portGroups'], (value) => PortGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vlanGroups: map['vlanGroups'] == null ? null : (pulumi.Input.decodeList<VlanGroupPropertiesResponse>(map['vlanGroups'], (value) => VlanGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

