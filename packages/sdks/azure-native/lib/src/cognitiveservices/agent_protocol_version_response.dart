// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Type modeling the protocol and version used by an agent/exposed by a deployment.
class AgentProtocolVersionResponse {
  /// The protocol used by the agent/exposed by a deployment.
  final pulumi.Input<String>? protocol;
  /// The version of the protocol.
  final pulumi.Input<String>? version;

  /// Creates a new [AgentProtocolVersionResponse].
  /// [protocol] The protocol used by the agent/exposed by a deployment.
  /// [version] The version of the protocol.
  AgentProtocolVersionResponse({
    this.protocol,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'version': ?version,
    };
  }

  factory AgentProtocolVersionResponse.fromMap(Map<String, dynamic> map) {
    return AgentProtocolVersionResponse(
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

