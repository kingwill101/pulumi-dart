// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference.dart';
import 'virtual_machine_scale_set_network_configuration.dart';

/// Describes a virtual machine scale set network profile.
class VirtualMachineScaleSetNetworkProfile {
  /// A reference to a load balancer probe used to determine the health of an
  /// instance in the virtual machine scale set. The reference will be in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'.
  final ApiEntityReference? healthProbe;
  /// specifies the Microsoft.Network API version used when creating networking
  /// resources in the Network Interface Configurations for Virtual Machine Scale Set
  /// with orchestration mode 'Flexible'
  final String? networkApiVersion;
  /// The list of network configurations.
  final List<VirtualMachineScaleSetNetworkConfiguration>? networkInterfaceConfigurations;

  /// Creates a new [VirtualMachineScaleSetNetworkProfile].
  /// [healthProbe] A reference to a load balancer probe used to determine the health of an
  /// [networkApiVersion] specifies the Microsoft.Network API version used when creating networking
  /// [networkInterfaceConfigurations] The list of network configurations.
  VirtualMachineScaleSetNetworkProfile({
    this.healthProbe,
    this.networkApiVersion,
    this.networkInterfaceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthProbe': ?healthProbe == null ? null : healthProbe!.toMap(),
      'networkApiVersion': ?networkApiVersion,
      'networkInterfaceConfigurations': ?networkInterfaceConfigurations == null ? null : pulumi.Input.encodeList<VirtualMachineScaleSetNetworkConfiguration, Map<String, dynamic>>(networkInterfaceConfigurations!, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetNetworkProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkProfile(
      healthProbe: map['healthProbe'] == null ? null : ApiEntityReference.fromMap((map['healthProbe'] as Map).cast<String, dynamic>()),
      networkApiVersion: map['networkApiVersion'] == null ? null : map['networkApiVersion'] as String,
      networkInterfaceConfigurations: map['networkInterfaceConfigurations'] == null ? null : pulumi.Input.decodeList<VirtualMachineScaleSetNetworkConfiguration>(map['networkInterfaceConfigurations'], (value) => VirtualMachineScaleSetNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

