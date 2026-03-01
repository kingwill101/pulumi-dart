// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkAclsAclIngressAclEntry {
  /// Description of the entry direction rule.
  final String description;
  /// The name of the entry direction rule entry.
  final String networkAclEntryName;
  /// The authorization policy.
  final String policy;
  /// Source port range.
  final String port;
  /// Transport layer protocol.
  final String protocol;
  /// The source address field.
  final String sourceCidrIp;

  /// Creates a new [GetNetworkAclsAclIngressAclEntry].
  /// [description] Description of the entry direction rule.
  /// [networkAclEntryName] The name of the entry direction rule entry.
  /// [policy] The authorization policy.
  /// [port] Source port range.
  /// [protocol] Transport layer protocol.
  /// [sourceCidrIp] The source address field.
  GetNetworkAclsAclIngressAclEntry({
    required this.description,
    required this.networkAclEntryName,
    required this.policy,
    required this.port,
    required this.protocol,
    required this.sourceCidrIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'networkAclEntryName': networkAclEntryName,
      'policy': policy,
      'port': port,
      'protocol': protocol,
      'sourceCidrIp': sourceCidrIp,
    };
  }

  factory GetNetworkAclsAclIngressAclEntry.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsAclIngressAclEntry(
      description: map['description'] as String,
      networkAclEntryName: map['networkAclEntryName'] as String,
      policy: map['policy'] as String,
      port: map['port'] as String,
      protocol: map['protocol'] as String,
      sourceCidrIp: map['sourceCidrIp'] as String,
    );
  }
}

