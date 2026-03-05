// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'virtual_machine_scale_set_network_configuration_response.dart';

/// Describes a virtual machine scale set network profile.
class VirtualMachineScaleSetNetworkProfileResponse {
  /// A reference to a load balancer probe used to determine the health of an instance in the virtual machine scale set. The reference will be in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'.
  final pulumi.Input<ApiEntityReferenceResponse>? healthProbe;
  /// specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set with orchestration mode 'Flexible'
  final pulumi.Input<String>? networkApiVersion;
  /// The list of network configurations.
  final pulumi.Input<List<VirtualMachineScaleSetNetworkConfigurationResponse>>? networkInterfaceConfigurations;

  /// Creates a new [VirtualMachineScaleSetNetworkProfileResponse].
  /// [healthProbe] A reference to a load balancer probe used to determine the health of an instance in the virtual machine scale set. The reference will be in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'.
  /// [networkApiVersion] specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set with orchestration mode 'Flexible'
  /// [networkInterfaceConfigurations] The list of network configurations.
  VirtualMachineScaleSetNetworkProfileResponse({
    this.healthProbe,
    this.networkApiVersion,
    this.networkInterfaceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthProbe': ?pulumi.Input.mapOptionalInputValue<ApiEntityReferenceResponse, Map<String, dynamic>>(healthProbe, (value) => value.toMap()),
      'networkApiVersion': ?networkApiVersion,
      'networkInterfaceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineScaleSetNetworkConfigurationResponse>, List<Map<String, dynamic>>>(networkInterfaceConfigurations, (value) => pulumi.Input.encodeList<VirtualMachineScaleSetNetworkConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachineScaleSetNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkProfileResponse(
      healthProbe: (() { final guardedValue = map['healthProbe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEntityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkApiVersion: (() { final guardedValue = map['networkApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceConfigurations: (() { final guardedValue = map['networkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineScaleSetNetworkConfigurationResponse>(guardedValue, (value) => VirtualMachineScaleSetNetworkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

