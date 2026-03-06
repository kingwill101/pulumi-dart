// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_information.dart';
import 'managed_resource_group_configuration.dart';

/// {@template pulumi_managednetworkfabric_network_fabric_controller_args_doc}
/// The set of arguments for NetworkFabricController.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_fabric_controller_args_doc}
class NetworkFabricControllerArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// As part of an update, the Infrastructure ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Infrastructure services. (This is a Mandatory attribute)
  final pulumi.Input<List<ExpressRouteConnectionInformation>>? infrastructureExpressRouteConnections;
  /// IPv4 Network Fabric Controller Address Space.
  final pulumi.Input<String>? ipv4AddressSpace;
  /// IPv6 Network Fabric Controller Address Space.
  final pulumi.Input<String>? ipv6AddressSpace;
  /// A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints.
  final pulumi.Input<String>? isWorkloadManagementNetworkEnabled;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Managed Resource Group configuration properties.
  final pulumi.Input<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration;
  /// Name of the Network Fabric Controller.
  final pulumi.Input<String>? networkFabricControllerName;
  /// Network Fabric Controller SKU.
  final pulumi.Input<String>? nfcSku;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// As part of an update, the workload ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Workload services. (This is a Mandatory attribute).
  final pulumi.Input<List<ExpressRouteConnectionInformation>>? workloadExpressRouteConnections;

  /// Creates a new [NetworkFabricControllerArgs].
  /// [annotation] Switch configuration description.
  /// [infrastructureExpressRouteConnections] As part of an update, the Infrastructure ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Infrastructure services. (This is a Mandatory attribute)
  /// [ipv4AddressSpace] IPv4 Network Fabric Controller Address Space.
  /// [ipv6AddressSpace] IPv6 Network Fabric Controller Address Space.
  /// [isWorkloadManagementNetworkEnabled] A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] Managed Resource Group configuration properties.
  /// [networkFabricControllerName] Name of the Network Fabric Controller.
  /// [nfcSku] Network Fabric Controller SKU.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [workloadExpressRouteConnections] As part of an update, the workload ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Workload services. (This is a Mandatory attribute).
  const NetworkFabricControllerArgs({
    this.annotation,
    this.infrastructureExpressRouteConnections,
    this.ipv4AddressSpace,
    this.ipv6AddressSpace,
    this.isWorkloadManagementNetworkEnabled,
    this.location,
    this.managedResourceGroupConfiguration,
    this.networkFabricControllerName,
    this.nfcSku,
    required this.resourceGroupName,
    this.tags,
    this.workloadExpressRouteConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'infrastructureExpressRouteConnections': ?pulumi.Input.mapOptionalInputValue<List<ExpressRouteConnectionInformation>, List<Map<String, dynamic>>>(infrastructureExpressRouteConnections, (value) => pulumi.Input.encodeList<ExpressRouteConnectionInformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv4AddressSpace': ?ipv4AddressSpace,
      'ipv6AddressSpace': ?ipv6AddressSpace,
      'isWorkloadManagementNetworkEnabled': ?isWorkloadManagementNetworkEnabled,
      'location': ?location,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedResourceGroupConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'networkFabricControllerName': ?networkFabricControllerName,
      'nfcSku': ?nfcSku,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workloadExpressRouteConnections': ?pulumi.Input.mapOptionalInputValue<List<ExpressRouteConnectionInformation>, List<Map<String, dynamic>>>(workloadExpressRouteConnections, (value) => pulumi.Input.encodeList<ExpressRouteConnectionInformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkFabricControllerArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFabricControllerArgs(
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureExpressRouteConnections: (() { final guardedValue = map['infrastructureExpressRouteConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressRouteConnectionInformation>(guardedValue, (value) => ExpressRouteConnectionInformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv4AddressSpace: (() { final guardedValue = map['ipv4AddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AddressSpace: (() { final guardedValue = map['ipv6AddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isWorkloadManagementNetworkEnabled: (() { final guardedValue = map['isWorkloadManagementNetworkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedResourceGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkFabricControllerName: (() { final guardedValue = map['networkFabricControllerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfcSku: (() { final guardedValue = map['nfcSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workloadExpressRouteConnections: (() { final guardedValue = map['workloadExpressRouteConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressRouteConnectionInformation>(guardedValue, (value) => ExpressRouteConnectionInformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

