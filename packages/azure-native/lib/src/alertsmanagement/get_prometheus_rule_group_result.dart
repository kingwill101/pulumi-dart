// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_rule_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrometheusRuleGroup.
class GetPrometheusRuleGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Apply rule to data from a specific cluster.
  final String? clusterName;
  /// Rule group description.
  final String? description;
  /// Enable/disable rule group.
  final bool? enabled;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The interval in which to run the Prometheus rule group represented in ISO 8601 duration format. Should be between 1 and 15 minutes
  final String? interval;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Defines the rules in the Prometheus rule group.
  final List<PrometheusRuleResponse> rules;
  /// Target Azure Monitor workspaces resource ids. This api-version is currently limited to creating with one scope. This may change in future.
  final List<String> scopes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrometheusRuleGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterName] Apply rule to data from a specific cluster.
  /// [description] Rule group description.
  /// [enabled] Enable/disable rule group.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [interval] The interval in which to run the Prometheus rule group represented in ISO 8601 duration format. Should be between 1 and 15 minutes
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [rules] Defines the rules in the Prometheus rule group.
  /// [scopes] Target Azure Monitor workspaces resource ids. This api-version is currently limited to creating with one scope. This may change in future.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrometheusRuleGroupResult({
    required this.azureApiVersion,
    this.clusterName,
    this.description,
    this.enabled,
    required this.id,
    this.interval,
    required this.location,
    required this.name,
    required this.rules,
    required this.scopes,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clusterName': ?clusterName,
      'description': ?description,
      'enabled': ?enabled,
      'id': id,
      'interval': ?interval,
      'location': location,
      'name': name,
      'rules': pulumi.Input.encodeList<PrometheusRuleResponse, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'scopes': scopes,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPrometheusRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetPrometheusRuleGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      id: map['id'] as String,
      interval: map['interval'] == null ? null : map['interval'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      rules: pulumi.Input.decodeList<PrometheusRuleResponse>(map['rules'], (value) => PrometheusRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      scopes: (map['scopes'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

