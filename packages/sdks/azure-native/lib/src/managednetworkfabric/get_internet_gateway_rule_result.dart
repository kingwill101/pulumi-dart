// ignore_for_file: unused_element, unnecessary_cast

import 'rule_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInternetGatewayRule.
class GetInternetGatewayRuleResult {
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// List of Internet Gateway resource Id.
  final List<String> internetGatewayIds;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Rules for the InternetGateways
  final RulePropertiesResponse ruleProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetInternetGatewayRuleResult].
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [internetGatewayIds] List of Internet Gateway resource Id.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [ruleProperties] Rules for the InternetGateways
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetInternetGatewayRuleResult({
    this.annotation,
    required this.azureApiVersion,
    required this.id,
    required this.internetGatewayIds,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.ruleProperties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'internetGatewayIds': internetGatewayIds,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'ruleProperties': ruleProperties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetInternetGatewayRuleResult.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayRuleResult(
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      internetGatewayIds: (map['internetGatewayIds'] as List).cast<String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      ruleProperties: RulePropertiesResponse.fromMap((map['ruleProperties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

