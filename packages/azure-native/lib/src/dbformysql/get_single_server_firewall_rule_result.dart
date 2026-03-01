// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSingleServerFirewallRule.
class GetSingleServerFirewallRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The end IP address of the server firewall rule. Must be IPv4 format.
  final String endIpAddress;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The start IP address of the server firewall rule. Must be IPv4 format.
  final String startIpAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSingleServerFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIpAddress] The end IP address of the server firewall rule. Must be IPv4 format.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [startIpAddress] The start IP address of the server firewall rule. Must be IPv4 format.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSingleServerFirewallRuleResult({
    required this.azureApiVersion,
    required this.endIpAddress,
    required this.id,
    required this.name,
    required this.startIpAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'endIpAddress': endIpAddress,
      'id': id,
      'name': name,
      'startIpAddress': startIpAddress,
      'type': type,
    };
  }

  factory GetSingleServerFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetSingleServerFirewallRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endIpAddress: map['endIpAddress'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      startIpAddress: map['startIpAddress'] as String,
      type: map['type'] as String,
    );
  }
}

