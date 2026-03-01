// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_networks_properties_hci.dart';
import 'virtual_networks_properties_network_cloud.dart';
import 'virtual_networks_properties_vmware.dart';

class VirtualNetworksPropertiesInfraVnetProfile {
  /// Infra network profile for HCI platform
  final VirtualNetworksPropertiesHci? hci;
  /// Infra network profile for the NetworkCloud platform
  final VirtualNetworksPropertiesNetworkCloud? networkCloud;
  /// Infra network profile for VMware platform
  final VirtualNetworksPropertiesVmware? vmware;

  /// Creates a new [VirtualNetworksPropertiesInfraVnetProfile].
  /// [hci] Infra network profile for HCI platform
  /// [networkCloud] Infra network profile for the NetworkCloud platform
  /// [vmware] Infra network profile for VMware platform
  VirtualNetworksPropertiesInfraVnetProfile({
    this.hci,
    this.networkCloud,
    this.vmware,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hci': ?hci == null ? null : hci!.toMap(),
      'networkCloud': ?networkCloud == null ? null : networkCloud!.toMap(),
      'vmware': ?vmware == null ? null : vmware!.toMap(),
    };
  }

  factory VirtualNetworksPropertiesInfraVnetProfile.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesInfraVnetProfile(
      hci: map['hci'] == null ? null : VirtualNetworksPropertiesHci.fromMap((map['hci'] as Map).cast<String, dynamic>()),
      networkCloud: map['networkCloud'] == null ? null : VirtualNetworksPropertiesNetworkCloud.fromMap((map['networkCloud'] as Map).cast<String, dynamic>()),
      vmware: map['vmware'] == null ? null : VirtualNetworksPropertiesVmware.fromMap((map['vmware'] as Map).cast<String, dynamic>()),
    );
  }
}

