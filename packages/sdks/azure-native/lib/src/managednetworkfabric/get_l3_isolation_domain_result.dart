// ignore_for_file: unused_element, unnecessary_cast

import 'aggregate_route_configuration_response.dart';
import 'connected_subnet_route_policy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getL3IsolationDomain.
class GetL3IsolationDomainResult {
  /// Administrative state of the resource.
  final String administrativeState;
  /// Aggregate route configurations.
  final AggregateRouteConfigurationResponse? aggregateRouteConfiguration;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// Connected Subnet RoutePolicy
  final ConnectedSubnetRoutePolicyResponse? connectedSubnetRoutePolicy;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// ARM Resource ID of the Network Fabric.
  final String networkFabricId;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Advertise Connected Subnets. Ex: "True" | "False".
  final String? redistributeConnectedSubnets;
  /// Advertise Static Routes. Ex: "True" | "False".
  final String? redistributeStaticRoutes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetL3IsolationDomainResult].
  /// [administrativeState] Administrative state of the resource.
  /// [aggregateRouteConfiguration] Aggregate route configurations.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [connectedSubnetRoutePolicy] Connected Subnet RoutePolicy
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkFabricId] ARM Resource ID of the Network Fabric.
  /// [provisioningState] Provisioning state of the resource.
  /// [redistributeConnectedSubnets] Advertise Connected Subnets. Ex: "True" | "False".
  /// [redistributeStaticRoutes] Advertise Static Routes. Ex: "True" | "False".
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetL3IsolationDomainResult({
    required this.administrativeState,
    this.aggregateRouteConfiguration,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    this.connectedSubnetRoutePolicy,
    required this.id,
    required this.location,
    required this.name,
    required this.networkFabricId,
    required this.provisioningState,
    this.redistributeConnectedSubnets,
    this.redistributeStaticRoutes,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'aggregateRouteConfiguration': ?aggregateRouteConfiguration == null ? null : aggregateRouteConfiguration!.toMap(),
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'connectedSubnetRoutePolicy': ?connectedSubnetRoutePolicy == null ? null : connectedSubnetRoutePolicy!.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'networkFabricId': networkFabricId,
      'provisioningState': provisioningState,
      'redistributeConnectedSubnets': ?redistributeConnectedSubnets,
      'redistributeStaticRoutes': ?redistributeStaticRoutes,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetL3IsolationDomainResult.fromMap(Map<String, dynamic> map) {
    return GetL3IsolationDomainResult(
      administrativeState: map['administrativeState'] as String,
      aggregateRouteConfiguration: map['aggregateRouteConfiguration'] == null ? null : AggregateRouteConfigurationResponse.fromMap((map['aggregateRouteConfiguration']! as Map).cast<String, dynamic>()),
      annotation: map['annotation'] == null ? null : map['annotation']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      connectedSubnetRoutePolicy: map['connectedSubnetRoutePolicy'] == null ? null : ConnectedSubnetRoutePolicyResponse.fromMap((map['connectedSubnetRoutePolicy']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkFabricId: map['networkFabricId'] as String,
      provisioningState: map['provisioningState'] as String,
      redistributeConnectedSubnets: map['redistributeConnectedSubnets'] == null ? null : map['redistributeConnectedSubnets']! as String,
      redistributeStaticRoutes: map['redistributeStaticRoutes'] == null ? null : map['redistributeStaticRoutes']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

