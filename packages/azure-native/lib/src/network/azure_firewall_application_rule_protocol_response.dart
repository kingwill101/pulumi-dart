// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the application rule protocol.
class AzureFirewallApplicationRuleProtocolResponse {
  /// Port number for the protocol, cannot be greater than 64000. This field is optional.
  final int? port;
  /// Protocol type.
  final String? protocolType;

  /// Creates a new [AzureFirewallApplicationRuleProtocolResponse].
  /// [port] Port number for the protocol, cannot be greater than 64000. This field is optional.
  /// [protocolType] Protocol type.
  AzureFirewallApplicationRuleProtocolResponse({
    this.port,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocolType': ?protocolType,
    };
  }

  factory AzureFirewallApplicationRuleProtocolResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallApplicationRuleProtocolResponse(
      port: map['port'] == null ? null : map['port'] as int,
      protocolType: map['protocolType'] == null ? null : map['protocolType'] as String,
    );
  }
}

