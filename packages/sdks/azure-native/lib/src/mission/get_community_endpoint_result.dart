// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_endpoint_destination_rule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCommunityEndpoint.
class GetCommunityEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Provisioning State.
  final String? provisioningState;
  /// List of resource ids created by community endpoint.
  final List<String>? resourceCollection;
  /// Community Endpoint Rule Collection.
  final List<CommunityEndpointDestinationRuleResponse>? ruleCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetCommunityEndpointResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceCollection,
    this.ruleCollection,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceCollection': ?resourceCollection,
      'ruleCollection': ?(() { final guardedValue = ruleCollection; if (guardedValue == null) return null; return pulumi.Input.encodeList<CommunityEndpointDestinationRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetCommunityEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetCommunityEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceCollection: (() { final guardedValue = map['resourceCollection']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ruleCollection: (() { final guardedValue = map['ruleCollection']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CommunityEndpointDestinationRuleResponse>(guardedValue, (value) => CommunityEndpointDestinationRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
