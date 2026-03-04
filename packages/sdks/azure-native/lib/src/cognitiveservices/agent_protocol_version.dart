// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Type modeling the protocol and version used by an agent/exposed by a deployment.
class AgentProtocolVersion {
  /// The protocol used by the agent/exposed by a deployment.
  final pulumi.Input<String>? protocol;

  /// The version of the protocol.
  final pulumi.Input<String>? version;

  /// Creates a new [AgentProtocolVersion].
  /// [protocol] The protocol used by the agent/exposed by a deployment.
  /// [version] The version of the protocol.
  AgentProtocolVersion({this.protocol, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'protocol': ?protocol, 'version': ?version};
  }

  factory AgentProtocolVersion.fromMap(Map<String, dynamic> map) {
    return AgentProtocolVersion(
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
