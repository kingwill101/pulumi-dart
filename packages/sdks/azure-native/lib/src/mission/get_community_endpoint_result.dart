// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_endpoint_destination_rule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCommunityEndpoint.
class GetCommunityEndpointResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// Provisioning State.
  final String provisioningState;

  /// List of resource ids created by community endpoint.
  final List<String> resourceCollection;

  /// Community Endpoint Rule Collection.
  final List<CommunityEndpointDestinationRuleResponse> ruleCollection;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCommunityEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning State.
  /// [resourceCollection] List of resource ids created by community endpoint.
  /// [ruleCollection] Community Endpoint Rule Collection.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCommunityEndpointResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceCollection,
    required this.ruleCollection,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceCollection': resourceCollection,
      'ruleCollection':
          pulumi.Input.encodeList<
            CommunityEndpointDestinationRuleResponse,
            Map<String, dynamic>
          >(ruleCollection, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCommunityEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetCommunityEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceCollection: (map['resourceCollection'] as List).cast<String>(),
      ruleCollection:
          pulumi.Input.decodeList<CommunityEndpointDestinationRuleResponse>(
            map['ruleCollection']!,
            (value) => CommunityEndpointDestinationRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
