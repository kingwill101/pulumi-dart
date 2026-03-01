// ignore_for_file: unused_element, unnecessary_cast


/// Type modeling the protocol and version used by an agent/exposed by a deployment.
class AgentProtocolVersion {
  /// The protocol used by the agent/exposed by a deployment.
  final String? protocol;
  /// The version of the protocol.
  final String? version;

  /// Creates a new [AgentProtocolVersion].
  /// [protocol] The protocol used by the agent/exposed by a deployment.
  /// [version] The version of the protocol.
  AgentProtocolVersion({
    this.protocol,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'version': ?version,
    };
  }

  factory AgentProtocolVersion.fromMap(Map<String, dynamic> map) {
    return AgentProtocolVersion(
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

