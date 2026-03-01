// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'virtual_machine_scale_set_network_configuration_response.dart';

/// Describes a virtual machine scale set network profile.
class VirtualMachineScaleSetNetworkProfileResponse {
  /// A reference to a load balancer probe used to determine the health of an
  /// instance in the virtual machine scale set. The reference will be in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'.
  final ApiEntityReferenceResponse? healthProbe;
  /// specifies the Microsoft.Network API version used when creating networking
  /// resources in the Network Interface Configurations for Virtual Machine Scale Set
  /// with orchestration mode 'Flexible'
  final String? networkApiVersion;
  /// The list of network configurations.
  final List<VirtualMachineScaleSetNetworkConfigurationResponse>? networkInterfaceConfigurations;

  /// Creates a new [VirtualMachineScaleSetNetworkProfileResponse].
  /// [healthProbe] A reference to a load balancer probe used to determine the health of an
  /// [networkApiVersion] specifies the Microsoft.Network API version used when creating networking
  /// [networkInterfaceConfigurations] The list of network configurations.
  VirtualMachineScaleSetNetworkProfileResponse({
    this.healthProbe,
    this.networkApiVersion,
    this.networkInterfaceConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthProbe': ?healthProbe == null ? null : healthProbe!.toMap(),
      'networkApiVersion': ?networkApiVersion,
      'networkInterfaceConfigurations': ?networkInterfaceConfigurations == null ? null : pulumi.Input.encodeList<VirtualMachineScaleSetNetworkConfigurationResponse, Map<String, dynamic>>(networkInterfaceConfigurations!, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScaleSetNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetNetworkProfileResponse(
      healthProbe: map['healthProbe'] == null ? null : ApiEntityReferenceResponse.fromMap((map['healthProbe'] as Map).cast<String, dynamic>()),
      networkApiVersion: map['networkApiVersion'] == null ? null : map['networkApiVersion'] as String,
      networkInterfaceConfigurations: map['networkInterfaceConfigurations'] == null ? null : pulumi.Input.decodeList<VirtualMachineScaleSetNetworkConfigurationResponse>(map['networkInterfaceConfigurations'], (value) => VirtualMachineScaleSetNetworkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

