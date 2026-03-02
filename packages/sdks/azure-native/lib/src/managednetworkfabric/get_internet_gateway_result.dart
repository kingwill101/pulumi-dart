// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getInternetGateway.
class GetInternetGatewayResult {
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// ARM Resource ID of the Internet Gateway Rule.
  final String? internetGatewayRuleId;
  /// IPv4 Address of Internet Gateway.
  final String ipv4Address;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// ARM Resource ID of the Network Fabric Controller.
  final String networkFabricControllerId;
  /// Port number of Internet Gateway.
  final int port;
  /// Provisioning state of resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetInternetGatewayResult].
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [internetGatewayRuleId] ARM Resource ID of the Internet Gateway Rule.
  /// [ipv4Address] IPv4 Address of Internet Gateway.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkFabricControllerId] ARM Resource ID of the Network Fabric Controller.
  /// [port] Port number of Internet Gateway.
  /// [provisioningState] Provisioning state of resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetInternetGatewayResult({
    this.annotation,
    required this.azureApiVersion,
    required this.id,
    this.internetGatewayRuleId,
    required this.ipv4Address,
    required this.location,
    required this.name,
    required this.networkFabricControllerId,
    required this.port,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'internetGatewayRuleId': ?internetGatewayRuleId,
      'ipv4Address': ipv4Address,
      'location': location,
      'name': name,
      'networkFabricControllerId': networkFabricControllerId,
      'port': port,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetInternetGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayResult(
      annotation: map['annotation'] == null ? null : map['annotation']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      internetGatewayRuleId: map['internetGatewayRuleId'] == null ? null : map['internetGatewayRuleId']! as String,
      ipv4Address: map['ipv4Address'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkFabricControllerId: map['networkFabricControllerId'] as String,
      port: map['port'] as int,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

