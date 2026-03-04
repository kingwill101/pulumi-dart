// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_networks_properties_response_hci.dart';
import 'virtual_networks_properties_response_network_cloud.dart';
import 'virtual_networks_properties_response_vmware.dart';

class VirtualNetworksPropertiesResponseInfraVnetProfile {
  /// Infra network profile for HCI platform
  final pulumi.Input<VirtualNetworksPropertiesResponseHci>? hci;

  /// Infra network profile for the NetworkCloud platform
  final pulumi.Input<VirtualNetworksPropertiesResponseNetworkCloud>?
  networkCloud;

  /// Infra network profile for VMware platform
  final pulumi.Input<VirtualNetworksPropertiesResponseVmware>? vmware;

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
      'hci':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNetworksPropertiesResponseHci,
            Map<String, dynamic>
          >(hci, (value) => value.toMap()),
      'networkCloud':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNetworksPropertiesResponseNetworkCloud,
            Map<String, dynamic>
          >(networkCloud, (value) => value.toMap()),
      'vmware':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNetworksPropertiesResponseVmware,
            Map<String, dynamic>
          >(vmware, (value) => value.toMap()),
    };
  }

  factory VirtualNetworksPropertiesResponseInfraVnetProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworksPropertiesResponseInfraVnetProfile(
      hci: (() {
        final guardedValue = map['hci'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNetworksPropertiesResponseHci.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkCloud: (() {
        final guardedValue = map['networkCloud'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNetworksPropertiesResponseNetworkCloud.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vmware: (() {
        final guardedValue = map['vmware'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNetworksPropertiesResponseVmware.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
