// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getFirewallRule.
class GetFirewallRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// IP address defining the end of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  final String endIpAddress;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// IP address defining the start of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  final String startIpAddress;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIpAddress] IP address defining the end of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [startIpAddress] IP address defining the start of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFirewallRuleResult({
    required this.azureApiVersion,
    required this.endIpAddress,
    required this.id,
    required this.name,
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
      'startIpAddress': startIpAddress,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endIpAddress: map['endIpAddress'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      startIpAddress: map['startIpAddress'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
