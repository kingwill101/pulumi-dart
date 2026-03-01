// ignore_for_file: unused_element, unnecessary_cast

import 'ipconfiguration_arm_reference_response.dart';
import 'logical_network_arm_reference_response.dart';
import 'virtual_network_arm_reference_response.dart';
import 'virtual_network_subnet_arm_reference_response.dart';

/// LoadBalancer Backend Address properties
class LoadBalancerBackendAddressPropertiesResponse {
  /// admin state - if set to false, the address is removed from the pool
  final String? adminState;
  /// IP address of the backend target. Populated automatically from the referenced IP configuration.
  final String ipAddress;
  /// Reference to the logical network containing this backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with subnet and virtualNetwork.
  final LogicalNetworkArmReferenceResponse logicalNetwork;
  /// Nic Based backend-ip association
  final IPConfigurationArmReferenceResponse? networkInterfaceIPConfiguration;
  /// Reference to the subnet containing the backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with logicalNetwork.
  final VirtualNetworkSubnetArmReferenceResponse subnet;
  /// Reference to the virtual network containing the backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with logicalNetwork.
  final VirtualNetworkArmReferenceResponse virtualNetwork;

  /// Creates a new [LoadBalancerBackendAddressPropertiesResponse].
  /// [adminState] admin state - if set to false, the address is removed from the pool
  /// [ipAddress] IP address of the backend target. Populated automatically from the referenced IP configuration.
  /// [logicalNetwork] Reference to the logical network containing this backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with subnet and virtualNetwork.
  /// [networkInterfaceIPConfiguration] Nic Based backend-ip association
  /// [subnet] Reference to the subnet containing the backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with logicalNetwork.
  /// [virtualNetwork] Reference to the virtual network containing the backend address. Populated automatically from the referenced IP configuration. Mutually exclusive with logicalNetwork.
  LoadBalancerBackendAddressPropertiesResponse({
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
      'logicalNetwork': logicalNetwork.toMap(),
      'networkInterfaceIPConfiguration': ?networkInterfaceIPConfiguration == null ? null : networkInterfaceIPConfiguration!.toMap(),
      'subnet': subnet.toMap(),
      'virtualNetwork': virtualNetwork.toMap(),
    };
  }

  factory LoadBalancerBackendAddressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPropertiesResponse(
      adminState: map['adminState'] == null ? null : map['adminState'] as String,
      ipAddress: map['ipAddress'] as String,
      logicalNetwork: LogicalNetworkArmReferenceResponse.fromMap((map['logicalNetwork'] as Map).cast<String, dynamic>()),
      networkInterfaceIPConfiguration: map['networkInterfaceIPConfiguration'] == null ? null : IPConfigurationArmReferenceResponse.fromMap((map['networkInterfaceIPConfiguration'] as Map).cast<String, dynamic>()),
      subnet: VirtualNetworkSubnetArmReferenceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      virtualNetwork: VirtualNetworkArmReferenceResponse.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

