// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_appliance_network_interface_configuration_properties_response.dart';

/// Represents a single NIC configuration.
class VirtualApplianceNetworkInterfaceConfigurationResponse {
  /// NIC type. This should be either PublicNic or PrivateNic.
  final String? nicType;
  /// Represents a single NIC configuration properties.
  final VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse? properties;

  /// Creates a new [VirtualApplianceNetworkInterfaceConfigurationResponse].
  /// [nicType] NIC type. This should be either PublicNic or PrivateNic.
  /// [properties] Represents a single NIC configuration properties.
  VirtualApplianceNetworkInterfaceConfigurationResponse({
    this.nicType,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nicType': ?nicType,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory VirtualApplianceNetworkInterfaceConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceNetworkInterfaceConfigurationResponse(
      nicType: map['nicType'] == null ? null : map['nicType'] as String,
      properties: map['properties'] == null ? null : VirtualApplianceNetworkInterfaceConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

