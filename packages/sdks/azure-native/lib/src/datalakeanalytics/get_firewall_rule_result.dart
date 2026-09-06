// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallRule.
class GetFirewallRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final String? endIpAddress;
  /// The resource identifier.
  final String? id;
  /// The resource name.
  final String? name;
  /// The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final String? startIpAddress;
  /// The resource type.
  final String? type;

  /// Creates a new [GetFirewallRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endIpAddress] The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [startIpAddress] The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  /// [type] The resource type.
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
