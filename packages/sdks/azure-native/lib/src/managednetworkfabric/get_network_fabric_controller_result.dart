// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'controller_services_response.dart';
import 'express_route_connection_information_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNetworkFabricController.
class GetNetworkFabricControllerResult {
  /// Switch configuration description.
  final String? annotation;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// As part of an update, the Infrastructure ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Infrastructure services. (This is a Mandatory attribute)
  final List<ExpressRouteConnectionInformationResponse>?
  infrastructureExpressRouteConnections;

  /// InfrastructureServices IP ranges.
  final ControllerServicesResponse infrastructureServices;

  /// IPv4 Network Fabric Controller Address Space.
  final String? ipv4AddressSpace;

  /// IPv6 Network Fabric Controller Address Space.
  final String? ipv6AddressSpace;

  /// A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints.
  final String? isWorkloadManagementNetworkEnabled;

  /// The geo-location where the resource lives
  final String location;

  /// Managed Resource Group configuration properties.
  final ManagedResourceGroupConfigurationResponse?
  managedResourceGroupConfiguration;

  /// The name of the resource
  final String name;

  /// The NF-ID will be an input parameter used by the NF to link and get associated with the parent NFC Service.
  final List<String> networkFabricIds;

  /// Network Fabric Controller SKU.
  final String? nfcSku;

  /// Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of NFC provisioning.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// List of tenant InternetGateway resource IDs
  final List<String> tenantInternetGatewayIds;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// As part of an update, the workload ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Workload services. (This is a Mandatory attribute).
  final List<ExpressRouteConnectionInformationResponse>?
  workloadExpressRouteConnections;

  /// A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints. This is used for the backward compatibility.
  final bool workloadManagementNetwork;

  /// WorkloadServices IP ranges.
  final ControllerServicesResponse workloadServices;

  /// Creates a new [GetNetworkFabricControllerResult].
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [infrastructureExpressRouteConnections] As part of an update, the Infrastructure ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Infrastructure services. (This is a Mandatory attribute)
  /// [infrastructureServices] InfrastructureServices IP ranges.
  /// [ipv4AddressSpace] IPv4 Network Fabric Controller Address Space.
  /// [ipv6AddressSpace] IPv6 Network Fabric Controller Address Space.
  /// [isWorkloadManagementNetworkEnabled] A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroupConfiguration] Managed Resource Group configuration properties.
  /// [name] The name of the resource
  /// [networkFabricIds] The NF-ID will be an input parameter used by the NF to link and get associated with the parent NFC Service.
  /// [nfcSku] Network Fabric Controller SKU.
  /// [provisioningState] Provides you the latest status of the NFC service, whether it is Accepted, updating, Succeeded or Failed. During this process, the states keep changing based on the status of NFC provisioning.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantInternetGatewayIds] List of tenant InternetGateway resource IDs
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workloadExpressRouteConnections] As part of an update, the workload ExpressRoute CircuitID should be provided to create and Provision a NFC. This Express route is dedicated for Workload services. (This is a Mandatory attribute).
  /// [workloadManagementNetwork] A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints. This is used for the backward compatibility.
  /// [workloadServices] WorkloadServices IP ranges.
  GetNetworkFabricControllerResult({
    this.annotation,
    required this.azureApiVersion,
    required this.id,
    this.infrastructureExpressRouteConnections,
    required this.infrastructureServices,
    this.ipv4AddressSpace,
    this.ipv6AddressSpace,
    this.isWorkloadManagementNetworkEnabled,
    required this.location,
    this.managedResourceGroupConfiguration,
    required this.name,
    required this.networkFabricIds,
    this.nfcSku,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.tenantInternetGatewayIds,
    required this.type,
    this.workloadExpressRouteConnections,
    required this.workloadManagementNetwork,
    required this.workloadServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'infrastructureExpressRouteConnections': ?(() {
        final guardedValue = infrastructureExpressRouteConnections;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ExpressRouteConnectionInformationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'infrastructureServices': infrastructureServices.toMap(),
      'ipv4AddressSpace': ?ipv4AddressSpace,
      'ipv6AddressSpace': ?ipv6AddressSpace,
      'isWorkloadManagementNetworkEnabled': ?isWorkloadManagementNetworkEnabled,
      'location': location,
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration
          ?.toMap(),
      'name': name,
      'networkFabricIds': networkFabricIds,
      'nfcSku': ?nfcSku,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tenantInternetGatewayIds': tenantInternetGatewayIds,
      'type': type,
      'workloadExpressRouteConnections': ?(() {
        final guardedValue = workloadExpressRouteConnections;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ExpressRouteConnectionInformationResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'workloadManagementNetwork': workloadManagementNetwork,
      'workloadServices': workloadServices.toMap(),
    };
  }

  factory GetNetworkFabricControllerResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkFabricControllerResult(
      annotation: (() {
        final guardedValue = map['annotation'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      infrastructureExpressRouteConnections: (() {
        final guardedValue = map['infrastructureExpressRouteConnections'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ExpressRouteConnectionInformationResponse>(
          guardedValue,
          (value) => ExpressRouteConnectionInformationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      infrastructureServices: ControllerServicesResponse.fromMap(
        (map['infrastructureServices']! as Map).cast<String, dynamic>(),
      ),
      ipv4AddressSpace: (() {
        final guardedValue = map['ipv4AddressSpace'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ipv6AddressSpace: (() {
        final guardedValue = map['ipv6AddressSpace'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      isWorkloadManagementNetworkEnabled: (() {
        final guardedValue = map['isWorkloadManagementNetworkEnabled'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      managedResourceGroupConfiguration: (() {
        final guardedValue = map['managedResourceGroupConfiguration'];
        if (guardedValue == null) return null;
        return ManagedResourceGroupConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      name: map['name'] as String,
      networkFabricIds: (map['networkFabricIds'] as List).cast<String>(),
      nfcSku: (() {
        final guardedValue = map['nfcSku'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      tenantInternetGatewayIds: (map['tenantInternetGatewayIds'] as List)
          .cast<String>(),
      type: map['type'] as String,
      workloadExpressRouteConnections: (() {
        final guardedValue = map['workloadExpressRouteConnections'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ExpressRouteConnectionInformationResponse>(
          guardedValue,
          (value) => ExpressRouteConnectionInformationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      workloadManagementNetwork: map['workloadManagementNetwork'] as bool,
      workloadServices: ControllerServicesResponse.fromMap(
        (map['workloadServices']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
