// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_vnet_assignment_scope.dart';
import 'pool_endpoint_configuration.dart';
import 'public_ipaddress_configuration.dart';

/// The network configuration for a pool.
class NetworkConfiguration {
  /// The scope of dynamic vnet assignment.
  final pulumi.Input<DynamicVNetAssignmentScope>? dynamicVnetAssignmentScope;
  /// Accelerated networking enables single root I/O virtualization (SR-IOV) to a VM, which may lead to improved networking performance. For more details, see: https://learn.microsoft.com/azure/virtual-network/accelerated-networking-overview.
  final pulumi.Input<bool>? enableAcceleratedNetworking;
  /// The endpoint configuration for a pool.
  final pulumi.Input<PoolEndpointConfiguration>? endpointConfiguration;
  /// The public IP Address configuration of the networking configuration of a Pool.
  final pulumi.Input<PublicIPAddressConfiguration>? publicIPAddressConfiguration;
  /// The virtual network must be in the same region and subscription as the Azure Batch account. The specified subnet should have enough free IP addresses to accommodate the number of nodes in the pool. If the subnet doesn't have enough free IP addresses, the pool will partially allocate compute nodes and a resize error will occur. The 'MicrosoftAzureBatch' service principal must have the 'Classic Virtual Machine Contributor' Role-Based Access Control (RBAC) role for the specified VNet. The specified subnet must allow communication from the Azure Batch service to be able to schedule tasks on the compute nodes. This can be verified by checking if the specified VNet has any associated Network Security Groups (NSG). If communication to the compute nodes in the specified subnet is denied by an NSG, then the Batch service will set the state of the compute nodes to unusable. If the specified VNet has any associated Network Security Groups (NSG), then a few reserved system ports must be enabled for inbound communication，including ports 29876 and 29877. Also enable outbound connections to Azure Storage on port 443. For more details see: https://learn.microsoft.com/azure/batch/batch-api-basics#virtual-network-vnet-and-firewall-configuration
  final pulumi.Input<String>? subnetId;

  /// Creates a new [NetworkConfiguration].
  /// [dynamicVnetAssignmentScope] The scope of dynamic vnet assignment.
  /// [enableAcceleratedNetworking] Accelerated networking enables single root I/O virtualization (SR-IOV) to a VM, which may lead to improved networking performance. For more details, see: https://learn.microsoft.com/azure/virtual-network/accelerated-networking-overview.
  /// [endpointConfiguration] The endpoint configuration for a pool.
  /// [publicIPAddressConfiguration] The public IP Address configuration of the networking configuration of a Pool.
  /// [subnetId] The virtual network must be in the same region and subscription as the Azure Batch account. The specified subnet should have enough free IP addresses to accommodate the number of nodes in the pool. If the subnet doesn't have enough free IP addresses, the pool will partially allocate compute nodes and a resize error will occur. The 'MicrosoftAzureBatch' service principal must have the 'Classic Virtual Machine Contributor' Role-Based Access Control (RBAC) role for the specified VNet. The specified subnet must allow communication from the Azure Batch service to be able to schedule tasks on the compute nodes. This can be verified by checking if the specified VNet has any associated Network Security Groups (NSG). If communication to the compute nodes in the specified subnet is denied by an NSG, then the Batch service will set the state of the compute nodes to unusable. If the specified VNet has any associated Network Security Groups (NSG), then a few reserved system ports must be enabled for inbound communication，including ports 29876 and 29877. Also enable outbound connections to Azure Storage on port 443. For more details see: https://learn.microsoft.com/azure/batch/batch-api-basics#virtual-network-vnet-and-firewall-configuration
  const NetworkConfiguration({
    this.dynamicVnetAssignmentScope,
    this.enableAcceleratedNetworking,
    this.endpointConfiguration,
    this.publicIPAddressConfiguration,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicVnetAssignmentScope': ?pulumi.Input.mapOptionalInputValue<DynamicVNetAssignmentScope, String>(dynamicVnetAssignmentScope, (value) => value.wireValue),
      'enableAcceleratedNetworking': ?enableAcceleratedNetworking,
      'endpointConfiguration': ?pulumi.Input.mapOptionalInputValue<PoolEndpointConfiguration, Map<String, dynamic>>(endpointConfiguration, (value) => value.toMap()),
      'publicIPAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressConfiguration, Map<String, dynamic>>(publicIPAddressConfiguration, (value) => value.toMap()),
      'subnetId': ?subnetId,
    };
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      dynamicVnetAssignmentScope: (() { final guardedValue = map['dynamicVnetAssignmentScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DynamicVNetAssignmentScope.fromValue(guardedValue as String)); })(),
      enableAcceleratedNetworking: (() { final guardedValue = map['enableAcceleratedNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointConfiguration: (() { final guardedValue = map['endpointConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIPAddressConfiguration: (() { final guardedValue = map['publicIPAddressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

