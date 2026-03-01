// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the application rule protocol.
class AzureFirewallApplicationRuleProtocol {
  /// Port number for the protocol, cannot be greater than 64000. This field is optional.
  final int? port;
  /// Protocol type.
  final String? protocolType;

  /// Creates a new [AzureFirewallApplicationRuleProtocol].
  /// [port] Port number for the protocol, cannot be greater than 64000. This field is optional.
  /// [protocolType] Protocol type.
  AzureFirewallApplicationRuleProtocol({
    this.port,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocolType': ?protocolType,
    };
  }

  factory AzureFirewallApplicationRuleProtocol.fromMap(Map<String, dynamic> map) {
    return AzureFirewallApplicationRuleProtocol(
      port: map['port'] == null ? null : map['port'] as int,
      protocolType: map['protocolType'] == null ? null : map['protocolType'] as String,
    );
  }
}

