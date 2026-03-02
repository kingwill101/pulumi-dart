// ignore_for_file: unused_element, unnecessary_cast

import 'resource_sync_rule_properties_response_selector.dart';
import 'system_data_response.dart';

/// Result data returned by getResourceSyncRule.
class GetResourceSyncRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Priority represents a priority of the Resource Sync Rule
  final int? priority;
  /// Provisioning State for the Resource Sync Rule.
  final String provisioningState;
  /// A label selector is composed of two parts, matchLabels and matchExpressions. The first part, matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is 'key', the operator is 'In', and the values array contains only 'value'. The second part, matchExpressions is a list of resource selector requirements. Valid operators include In, NotIn, Exists, and DoesNotExist. The values set must be non-empty in the case of In and NotIn. The values set must be empty in the case of Exists and DoesNotExist. All of the requirements, from both matchLabels and matchExpressions must all be satisfied in order to match.
  final ResourceSyncRulePropertiesResponseSelector? selector;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// For an unmapped custom resource, its labels will be used to find matching resource sync rules. If this resource sync rule is one of the matching rules with highest priority, then the unmapped custom resource will be projected to the target resource group associated with this resource sync rule. The user creating this resource sync rule should have write permissions on the target resource group and this write permission will be validated when creating the resource sync rule.
  final String? targetResourceGroup;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetResourceSyncRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [priority] Priority represents a priority of the Resource Sync Rule
  /// [provisioningState] Provisioning State for the Resource Sync Rule.
  /// [selector] A label selector is composed of two parts, matchLabels and matchExpressions. The first part, matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is 'key', the operator is 'In', and the values array contains only 'value'. The second part, matchExpressions is a list of resource selector requirements. Valid operators include In, NotIn, Exists, and DoesNotExist. The values set must be non-empty in the case of In and NotIn. The values set must be empty in the case of Exists and DoesNotExist. All of the requirements, from both matchLabels and matchExpressions must all be satisfied in order to match.
  /// [systemData] Metadata pertaining to creation and last modification of the resource
  /// [tags] Resource tags.
  /// [targetResourceGroup] For an unmapped custom resource, its labels will be used to find matching resource sync rules. If this resource sync rule is one of the matching rules with highest priority, then the unmapped custom resource will be projected to the target resource group associated with this resource sync rule. The user creating this resource sync rule should have write permissions on the target resource group and this write permission will be validated when creating the resource sync rule.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetResourceSyncRuleResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    this.priority,
    required this.provisioningState,
    this.selector,
    required this.systemData,
    this.tags,
    this.targetResourceGroup,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'selector': ?selector == null ? null : selector!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetResourceGroup': ?targetResourceGroup,
      'type': type,
    };
  }

  factory GetResourceSyncRuleResult.fromMap(Map<String, dynamic> map) {
    return GetResourceSyncRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      priority: map['priority'] == null ? null : map['priority']! as int,
      provisioningState: map['provisioningState'] as String,
      selector: map['selector'] == null ? null : ResourceSyncRulePropertiesResponseSelector.fromMap((map['selector']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      targetResourceGroup: map['targetResourceGroup'] == null ? null : map['targetResourceGroup']! as String,
      type: map['type'] as String,
    );
  }
}

