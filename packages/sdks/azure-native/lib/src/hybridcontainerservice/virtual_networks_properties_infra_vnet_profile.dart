// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_networks_properties_hci.dart';
import 'virtual_networks_properties_network_cloud.dart';
import 'virtual_networks_properties_vmware.dart';

class VirtualNetworksPropertiesInfraVnetProfile {
  /// Infra network profile for HCI platform
  final pulumi.Input<VirtualNetworksPropertiesHci>? hci;
  /// Infra network profile for the NetworkCloud platform
  final pulumi.Input<VirtualNetworksPropertiesNetworkCloud>? networkCloud;
  /// Infra network profile for VMware platform
  final pulumi.Input<VirtualNetworksPropertiesVmware>? vmware;

  /// Creates a new [VirtualNetworksPropertiesInfraVnetProfile].
  /// [hci] Infra network profile for HCI platform
  /// [networkCloud] Infra network profile for the NetworkCloud platform
  /// [vmware] Infra network profile for VMware platform
  const VirtualNetworksPropertiesInfraVnetProfile({
    this.hci,
    this.networkCloud,
    this.vmware,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hci': ?pulumi.Input.mapOptionalInputValue<VirtualNetworksPropertiesHci, Map<String, dynamic>>(hci, (value) => value.toMap()),
      'networkCloud': ?pulumi.Input.mapOptionalInputValue<VirtualNetworksPropertiesNetworkCloud, Map<String, dynamic>>(networkCloud, (value) => value.toMap()),
      'vmware': ?pulumi.Input.mapOptionalInputValue<VirtualNetworksPropertiesVmware, Map<String, dynamic>>(vmware, (value) => value.toMap()),
    };
  }

  factory VirtualNetworksPropertiesInfraVnetProfile.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesInfraVnetProfile(
      hci: (() { final guardedValue = map['hci']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworksPropertiesHci.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkCloud: (() { final guardedValue = map['networkCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworksPropertiesNetworkCloud.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmware: (() { final guardedValue = map['vmware']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworksPropertiesVmware.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

