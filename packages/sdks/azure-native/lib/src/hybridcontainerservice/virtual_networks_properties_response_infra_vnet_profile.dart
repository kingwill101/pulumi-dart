// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_networks_properties_response_hci.dart';
import 'virtual_networks_properties_response_network_cloud.dart';
import 'virtual_networks_properties_response_vmware.dart';

class VirtualNetworksPropertiesResponseInfraVnetProfile {
  /// Infra network profile for HCI platform
  final VirtualNetworksPropertiesResponseHci? hci;
  /// Infra network profile for the NetworkCloud platform
  final VirtualNetworksPropertiesResponseNetworkCloud? networkCloud;
  /// Infra network profile for VMware platform
  final VirtualNetworksPropertiesResponseVmware? vmware;

  /// Creates a new [VirtualNetworksPropertiesResponseInfraVnetProfile].
  /// [hci] Infra network profile for HCI platform
  /// [networkCloud] Infra network profile for the NetworkCloud platform
  /// [vmware] Infra network profile for VMware platform
  VirtualNetworksPropertiesResponseInfraVnetProfile({
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

  factory VirtualNetworksPropertiesResponseInfraVnetProfile.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseInfraVnetProfile(
      hci: map['hci'] == null ? null : VirtualNetworksPropertiesResponseHci.fromMap((map['hci'] as Map).cast<String, dynamic>()),
      networkCloud: map['networkCloud'] == null ? null : VirtualNetworksPropertiesResponseNetworkCloud.fromMap((map['networkCloud'] as Map).cast<String, dynamic>()),
      vmware: map['vmware'] == null ? null : VirtualNetworksPropertiesResponseVmware.fromMap((map['vmware'] as Map).cast<String, dynamic>()),
    );
  }
}

