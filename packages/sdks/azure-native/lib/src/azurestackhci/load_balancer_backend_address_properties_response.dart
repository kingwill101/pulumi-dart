// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfiguration_arm_reference_response.dart';
import 'logical_network_arm_reference_response.dart';
import 'virtual_network_arm_reference_response.dart';
import 'virtual_network_subnet_arm_reference_response.dart';

/// LoadBalancer Backend Address properties
class LoadBalancerBackendAddressPropertiesResponse {
  /// admin state - if set to false, the address is removed from the pool
  final pulumi.Input<String?>? adminState;
  /// IP address of the backend target. Populated automatically from the referenced IP configuration.
  final pulumi.Input<String> ipAddress;
  /// Reference to the logical network containing this backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with subnet and virtualNetwork.
  final pulumi.Input<LogicalNetworkArmReferenceResponse> logicalNetwork;
  /// Nic Based backend-ip association
  final pulumi.Input<IPConfigurationArmReferenceResponse?>? networkInterfaceIPConfiguration;
  /// Reference to the subnet containing the backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with logicalNetwork.
  final pulumi.Input<VirtualNetworkSubnetArmReferenceResponse> subnet;
  /// Reference to the virtual network containing the backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with logicalNetwork.
  final pulumi.Input<VirtualNetworkArmReferenceResponse> virtualNetwork;

  /// Creates a new [LoadBalancerBackendAddressPropertiesResponse].
  /// [adminState] admin state - if set to false, the address is removed from the pool
  /// [ipAddress] IP address of the backend target. Populated automatically from the referenced IP configuration.
  /// [logicalNetwork] Reference to the logical network containing this backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with subnet and virtualNetwork.
  /// [networkInterfaceIPConfiguration] Nic Based backend-ip association
  /// [subnet] Reference to the subnet containing the backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with logicalNetwork.
  /// [virtualNetwork] Reference to the virtual network containing the backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with logicalNetwork.
  const LoadBalancerBackendAddressPropertiesResponse({
    this.adminState,
    required this.ipAddress,
    required this.logicalNetwork,
    this.networkInterfaceIPConfiguration,
    required this.subnet,
    required this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminState': ?adminState,
      'ipAddress': ipAddress,
      'logicalNetwork': pulumi.Input.mapInputValue<LogicalNetworkArmReferenceResponse, Map<String, dynamic>>(logicalNetwork, (value) => value.toMap()),
      'networkInterfaceIPConfiguration': ?pulumi.Input.mapOptionalInputValue<IPConfigurationArmReferenceResponse, Map<String, dynamic>>(networkInterfaceIPConfiguration, (value) => value.toMap()),
      'subnet': pulumi.Input.mapInputValue<VirtualNetworkSubnetArmReferenceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'virtualNetwork': pulumi.Input.mapInputValue<VirtualNetworkArmReferenceResponse, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory LoadBalancerBackendAddressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPropertiesResponse(
      adminState: (() { final guardedValue = map['adminState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      logicalNetwork: pulumi.Input.fromValue(LogicalNetworkArmReferenceResponse.fromMap((map['logicalNetwork']! as Map).cast<String, dynamic>())),
      networkInterfaceIPConfiguration: (() { final guardedValue = map['networkInterfaceIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPConfigurationArmReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: pulumi.Input.fromValue(VirtualNetworkSubnetArmReferenceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())),
      virtualNetwork: pulumi.Input.fromValue(VirtualNetworkArmReferenceResponse.fromMap((map['virtualNetwork']! as Map).cast<String, dynamic>())),
    );
  }
}
