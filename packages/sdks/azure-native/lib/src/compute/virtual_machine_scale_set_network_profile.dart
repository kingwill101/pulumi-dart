// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference.dart';
import 'virtual_machine_scale_set_network_configuration.dart';

/// Describes a virtual machine scale set network profile.
class VirtualMachineScaleSetNetworkProfile {
  /// A reference to a load balancer probe used to determine the health of an instance in the virtual machine scale set. The reference will be in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'.
  final pulumi.Input<ApiEntityReference>? healthProbe;
  /// specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set with orchestration mode 'Flexible'
  final pulumi.Input<String>? networkApiVersion;
  /// The list of network configurations.
  final pulumi.Input<List<VirtualMachineScaleSetNetworkConfiguration>>? networkInterfaceConfigurations;

  /// Creates a new [VirtualMachineScaleSetNetworkProfile].
  /// [healthProbe] A reference to a load balancer probe used to determine the health of an instance in the virtual machine scale set. The reference will be in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'.
  /// [networkApiVersion] specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set with orchestration mode 'Flexible'
  /// [networkInterfaceConfigurations] The list of network configurations.
  VirtualMachineScaleSetNetworkProfile({
    this.healthProbe,
    this.networkApiVersion,
    this.networkInterfaceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthProbe': ?pulumi.Input.mapOptionalInputValue<ApiEntityReference, Map<String, dynamic>>(healthProbe, (value) => value.toMap()),
      'networkApiVersion': ?networkApiVersion,
      'networkInterfaceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineScaleSetNetworkConfiguration>, List<Map<String, dynamic>>>(networkInterfaceConfigurations, (value) => pulumi.Input.encodeList<VirtualMachineScaleSetNetworkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachineScaleSetNetworkProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkProfile(
      healthProbe: (() { final guardedValue = map['healthProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEntityReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkApiVersion: (() { final guardedValue = map['networkApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceConfigurations: (() { final guardedValue = map['networkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineScaleSetNetworkConfiguration>(guardedValue, (value) => VirtualMachineScaleSetNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

