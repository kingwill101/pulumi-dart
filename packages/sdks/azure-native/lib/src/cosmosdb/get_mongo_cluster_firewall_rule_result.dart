// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getMongoClusterFirewallRule.
class GetMongoClusterFirewallRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final String endIpAddress;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state of the firewall rule.
  final String provisioningState;
  /// The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final String startIpAddress;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMongoClusterFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIpAddress] The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the firewall rule.
  /// [startIpAddress] The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMongoClusterFirewallRuleResult({
    required this.azureApiVersion,
    required this.endIpAddress,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.startIpAddress,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'endIpAddress': endIpAddress,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'startIpAddress': startIpAddress,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetMongoClusterFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetMongoClusterFirewallRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endIpAddress: map['endIpAddress'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      startIpAddress: map['startIpAddress'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
