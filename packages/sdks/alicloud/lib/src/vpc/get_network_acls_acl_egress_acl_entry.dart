// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkAclsAclEgressAclEntry {
  /// Give the description information of the direction rule.
  final String description;
  /// The destination address segment.
  final String destinationCidrIp;
  /// The name of the entry for the direction rule.
  final String networkAclEntryName;
  /// The  authorization policy.
  final String policy;
  /// Destination port range.
  final String port;
  /// Transport  layer protocol.
  final String protocol;

  /// Creates a new [GetNetworkAclsAclEgressAclEntry].
  /// [description] Give the description information of the direction rule.
  /// [destinationCidrIp] The destination address segment.
  /// [networkAclEntryName] The name of the entry for the direction rule.
  /// [policy] The  authorization policy.
  /// [port] Destination port range.
  /// [protocol] Transport  layer protocol.
  GetNetworkAclsAclEgressAclEntry({
    required this.description,
    required this.destinationCidrIp,
    required this.networkAclEntryName,
    required this.policy,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'destinationCidrIp': destinationCidrIp,
      'networkAclEntryName': networkAclEntryName,
      'policy': policy,
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetNetworkAclsAclEgressAclEntry.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsAclEgressAclEntry(
      description: map['description'] as String,
      destinationCidrIp: map['destinationCidrIp'] as String,
      networkAclEntryName: map['networkAclEntryName'] as String,
      policy: map['policy'] as String,
      port: map['port'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

