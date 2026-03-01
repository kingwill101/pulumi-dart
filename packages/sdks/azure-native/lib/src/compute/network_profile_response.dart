// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_reference_response.dart';
import 'virtual_machine_network_interface_configuration_response.dart';

/// Specifies the network interfaces or the networking configuration of the virtual machine.
class NetworkProfileResponse {
  /// specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations
  final String? networkApiVersion;
  /// Specifies the networking configurations that will be used to create the virtual machine networking resources.
  final List<VirtualMachineNetworkInterfaceConfigurationResponse>? networkInterfaceConfigurations;
  /// Specifies the list of resource Ids for the network interfaces associated with the virtual machine.
  final List<NetworkInterfaceReferenceResponse>? networkInterfaces;

  /// Creates a new [NetworkProfileResponse].
  /// [networkApiVersion] specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations
  /// [networkInterfaceConfigurations] Specifies the networking configurations that will be used to create the virtual machine networking resources.
  /// [networkInterfaces] Specifies the list of resource Ids for the network interfaces associated with the virtual machine.
  NetworkProfileResponse({
    this.networkApiVersion,
    this.networkInterfaceConfigurations,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkApiVersion': ?networkApiVersion,
      'networkInterfaceConfigurations': ?networkInterfaceConfigurations == null ? null : pulumi.Input.encodeList<VirtualMachineNetworkInterfaceConfigurationResponse, Map<String, dynamic>>(networkInterfaceConfigurations!, (value) => value.toMap()),
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInterfaceReferenceResponse, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      networkApiVersion: map['networkApiVersion'] == null ? null : map['networkApiVersion'] as String,
      networkInterfaceConfigurations: map['networkInterfaceConfigurations'] == null ? null : pulumi.Input.decodeList<VirtualMachineNetworkInterfaceConfigurationResponse>(map['networkInterfaceConfigurations'], (value) => VirtualMachineNetworkInterfaceConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceReferenceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

