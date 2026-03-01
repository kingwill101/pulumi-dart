// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_appliance_ipconfiguration.dart';

/// Represents a single NIC configuration properties.
class VirtualApplianceNetworkInterfaceConfigurationProperties {
  final List<VirtualApplianceIPConfiguration>? ipConfigurations;

  /// Creates a new [VirtualApplianceNetworkInterfaceConfigurationProperties].
  /// [ipConfigurations] Optional.
  VirtualApplianceNetworkInterfaceConfigurationProperties({
    this.ipConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<VirtualApplianceIPConfiguration, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
    };
  }

  factory VirtualApplianceNetworkInterfaceConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceNetworkInterfaceConfigurationProperties(
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<VirtualApplianceIPConfiguration>(map['ipConfigurations'], (value) => VirtualApplianceIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

