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
  NetworkFabricControllerArgs({
    pulumi.Output<String>? annotation,
    pulumi.Output<List<ExpressRouteConnectionInformation>>? infrastructureExpressRouteConnections,
    pulumi.Output<String>? ipv4AddressSpace,
    pulumi.Output<String>? ipv6AddressSpace,
    pulumi.Output<String>? isWorkloadManagementNetworkEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<ManagedResourceGroupConfiguration>? managedResourceGroupConfiguration,
    pulumi.Output<String>? networkFabricControllerName,
    pulumi.Output<String>? nfcSku,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<ExpressRouteConnectionInformation>>? workloadExpressRouteConnections,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      infrastructureExpressRouteConnections = pulumi.Input.asOptionalInput<List<ExpressRouteConnectionInformation>>(infrastructureExpressRouteConnections),
      ipv4AddressSpace = pulumi.Input.asOptionalInput<String>(ipv4AddressSpace),
      ipv6AddressSpace = pulumi.Input.asOptionalInput<String>(ipv6AddressSpace),
      isWorkloadManagementNetworkEnabled = pulumi.Input.asOptionalInput<String>(isWorkloadManagementNetworkEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupConfiguration = pulumi.Input.asOptionalInput<ManagedResourceGroupConfiguration>(managedResourceGroupConfiguration),
      networkFabricControllerName = pulumi.Input.asOptionalInput<String>(networkFabricControllerName),
      nfcSku = pulumi.Input.asOptionalInput<String>(nfcSku),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workloadExpressRouteConnections = pulumi.Input.asOptionalInput<List<ExpressRouteConnectionInformation>>(workloadExpressRouteConnections);

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
      annotation: map['annotation'] == null ? null : pulumi.Output.create<String>(map['annotation'] as String),
      infrastructureExpressRouteConnections: map['infrastructureExpressRouteConnections'] == null ? null : pulumi.Output.create<List<ExpressRouteConnectionInformation>>(pulumi.Input.decodeList<ExpressRouteConnectionInformation>(map['infrastructureExpressRouteConnections'], (value) => ExpressRouteConnectionInformation.fromMap((value as Map).cast<String, dynamic>()))),
      ipv4AddressSpace: map['ipv4AddressSpace'] == null ? null : pulumi.Output.create<String>(map['ipv4AddressSpace'] as String),
      ipv6AddressSpace: map['ipv6AddressSpace'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressSpace'] as String),
      isWorkloadManagementNetworkEnabled: map['isWorkloadManagementNetworkEnabled'] == null ? null : pulumi.Output.create<String>(map['isWorkloadManagementNetworkEnabled'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : pulumi.Output.create<ManagedResourceGroupConfiguration>(ManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())),
      networkFabricControllerName: map['networkFabricControllerName'] == null ? null : pulumi.Output.create<String>(map['networkFabricControllerName'] as String),
      nfcSku: map['nfcSku'] == null ? null : pulumi.Output.create<String>(map['nfcSku'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workloadExpressRouteConnections: map['workloadExpressRouteConnections'] == null ? null : pulumi.Output.create<List<ExpressRouteConnectionInformation>>(pulumi.Input.decodeList<ExpressRouteConnectionInformation>(map['workloadExpressRouteConnections'], (value) => ExpressRouteConnectionInformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

