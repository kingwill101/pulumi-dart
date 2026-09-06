// ignore_for_file: unused_element, unnecessary_cast

import 'cost_allocation_rule_properties_response.dart';

/// Result data returned by getCostAllocationRule.
class GetCostAllocationRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Azure Resource Manager Id for the rule. This is a read ony value.
  final String? id;
  /// Name of the rule. This is a read only value.
  final String? name;
  /// Cost allocation rule properties
  final CostAllocationRulePropertiesResponse? properties;
  /// Resource type of the rule. This is a read only value of Microsoft.CostManagement/CostAllocationRule.
  final String? type;

  /// Creates a new [GetCostAllocationRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure Resource Manager Id for the rule. This is a read ony value.
  /// [name] Name of the rule. This is a read only value.
  /// [properties] Cost allocation rule properties
  /// [type] Resource type of the rule. This is a read only value of Microsoft.CostManagement/CostAllocationRule.
  const GetCostAllocationRuleResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetCostAllocationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetCostAllocationRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return CostAllocationRulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
