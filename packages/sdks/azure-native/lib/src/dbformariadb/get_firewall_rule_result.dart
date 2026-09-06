// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallRule.
class GetFirewallRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The end IP address of the server firewall rule. Must be IPv4 format.
  final String? endIpAddress;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The start IP address of the server firewall rule. Must be IPv4 format.
  final String? startIpAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIpAddress] The end IP address of the server firewall rule. Must be IPv4 format.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [startIpAddress] The start IP address of the server firewall rule. Must be IPv4 format.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFirewallRuleResult({
    this.azureApiVersion,
    this.endIpAddress,
    this.id,
    this.name,
    this.startIpAddress,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'endIpAddress': ?endIpAddress,
      'id': ?id,
      'name': ?name,
      'startIpAddress': ?startIpAddress,
      'type': ?type,
    };
  }

  factory GetFirewallRuleResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endIpAddress: (() { final guardedValue = map['endIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startIpAddress: (() { final guardedValue = map['startIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
