// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_policy_statement_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRoutePolicy.
class GetRoutePolicyResult {
  /// AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
  final String? addressFamilyType;
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  final String? defaultAction;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Arm Resource ID of Network Fabric.
  final String networkFabricId;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Route Policy statements.
  final List<RoutePolicyStatementPropertiesResponse> statements;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRoutePolicyResult].
  /// [addressFamilyType] AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [defaultAction] Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkFabricId] Arm Resource ID of Network Fabric.
  /// [provisioningState] Provisioning state of the resource.
  /// [statements] Route Policy statements.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetRoutePolicyResult({
    this.addressFamilyType,
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    this.defaultAction,
    required this.id,
    required this.location,
    required this.name,
    required this.networkFabricId,
    required this.provisioningState,
    required this.statements,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamilyType': ?addressFamilyType,
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'defaultAction': ?defaultAction,
      'id': id,
      'location': location,
      'name': name,
      'networkFabricId': networkFabricId,
      'provisioningState': provisioningState,
      'statements': pulumi.Input.encodeList<RoutePolicyStatementPropertiesResponse, Map<String, dynamic>>(statements, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetRoutePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRoutePolicyResult(
      addressFamilyType: map['addressFamilyType'] == null ? null : map['addressFamilyType']! as String,
      administrativeState: map['administrativeState'] as String,
      annotation: map['annotation'] == null ? null : map['annotation']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      defaultAction: map['defaultAction'] == null ? null : map['defaultAction']! as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkFabricId: map['networkFabricId'] as String,
      provisioningState: map['provisioningState'] as String,
      statements: pulumi.Input.decodeList<RoutePolicyStatementPropertiesResponse>(map['statements'], (value) => RoutePolicyStatementPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

