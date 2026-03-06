// ignore_for_file: unused_element, unnecessary_cast

import 'cost_allocation_rule_properties_response.dart';

/// Result data returned by getCostAllocationRule.
class GetCostAllocationRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure Resource Manager Id for the rule. This is a read ony value.
  final String id;
  /// Name of the rule. This is a read only value.
  final String name;
  /// Cost allocation rule properties
  final CostAllocationRulePropertiesResponse properties;
  /// Resource type of the rule. This is a read only value of Microsoft.CostManagement/CostAllocationRule.
  final String type;

  /// Creates a new [GetCostAllocationRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure Resource Manager Id for the rule. This is a read ony value.
  /// [name] Name of the rule. This is a read only value.
  /// [properties] Cost allocation rule properties
  /// [type] Resource type of the rule. This is a read only value of Microsoft.CostManagement/CostAllocationRule.
  const GetCostAllocationRuleResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetCostAllocationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetCostAllocationRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: CostAllocationRulePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

