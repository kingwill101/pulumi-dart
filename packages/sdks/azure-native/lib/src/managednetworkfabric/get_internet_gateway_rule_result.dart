// ignore_for_file: unused_element, unnecessary_cast

import 'rule_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getInternetGatewayRule.
class GetInternetGatewayRuleResult {
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// List of Internet Gateway resource Id.
  final List<String>? internetGatewayIds;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Rules for the InternetGateways
  final RulePropertiesResponse? ruleProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetInternetGatewayRuleResult({
    this.annotation,
    this.azureApiVersion,
    this.id,
    this.internetGatewayIds,
    this.location,
    this.name,
    this.provisioningState,
    this.ruleProperties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'internetGatewayIds': ?internetGatewayIds,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'ruleProperties': ?ruleProperties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetInternetGatewayRuleResult.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayRuleResult(
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internetGatewayIds: (() { final guardedValue = map['internetGatewayIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleProperties: (() { final guardedValue = map['ruleProperties']; if (guardedValue == null) return null; return RulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
