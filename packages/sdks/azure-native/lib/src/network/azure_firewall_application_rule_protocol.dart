// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the application rule protocol.
class AzureFirewallApplicationRuleProtocol {
  /// Port number for the protocol, cannot be greater than 64000. This field is optional.
  final pulumi.Input<int?>? port;
  /// Protocol type.
  final pulumi.Input<dynamic>? protocolType;

  /// Creates a new [AzureFirewallApplicationRuleProtocol].
  /// [port] Port number for the protocol, cannot be greater than 64000. This field is optional.
  /// [protocolType] Protocol type.
  const AzureFirewallApplicationRuleProtocol({
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
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
