// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_group_properties_response.dart';
import 'port_group_properties_response.dart';
import 'vlan_group_properties_response.dart';

/// Dynamic match configuration object.
class CommonDynamicMatchConfigurationResponse {
  /// List of IP Groups.
  final List<IpGroupPropertiesResponse>? ipGroups;
  /// List of the port groups.
  final List<PortGroupPropertiesResponse>? portGroups;
  /// List of vlan groups.
  final List<VlanGroupPropertiesResponse>? vlanGroups;

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
      'ipGroups': ?ipGroups == null ? null : pulumi.Input.encodeList<IpGroupPropertiesResponse, Map<String, dynamic>>(ipGroups!, (value) => value.toMap()),
      'portGroups': ?portGroups == null ? null : pulumi.Input.encodeList<PortGroupPropertiesResponse, Map<String, dynamic>>(portGroups!, (value) => value.toMap()),
      'vlanGroups': ?vlanGroups == null ? null : pulumi.Input.encodeList<VlanGroupPropertiesResponse, Map<String, dynamic>>(vlanGroups!, (value) => value.toMap()),
    };
  }

  factory CommonDynamicMatchConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CommonDynamicMatchConfigurationResponse(
      ipGroups: map['ipGroups'] == null ? null : pulumi.Input.decodeList<IpGroupPropertiesResponse>(map['ipGroups'], (value) => IpGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      portGroups: map['portGroups'] == null ? null : pulumi.Input.decodeList<PortGroupPropertiesResponse>(map['portGroups'], (value) => PortGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      vlanGroups: map['vlanGroups'] == null ? null : pulumi.Input.decodeList<VlanGroupPropertiesResponse>(map['vlanGroups'], (value) => VlanGroupPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

