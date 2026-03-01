// ignore_for_file: unused_element, unnecessary_cast


class NetworkAclEntriesEgress {
  /// The description of the egress entry.
  final String? description;
  /// The destination ip of the egress entry.
  final String? destinationCidrIp;
  /// The entry type of the egress entry. It must be `custom` or `system`. Default value is `custom`.
  final String? entryType;
  /// The name of the egress entry.
  final String? name;
  /// The policy of the egress entry. It must be `accept` or `drop`.
  final String? policy;
  /// The port of the egress entry.
  final String? port;
  /// The protocol of the egress entry.
  final String? protocol;

  /// Creates a new [NetworkAclEntriesEgress].
  /// [description] The description of the egress entry.
  /// [destinationCidrIp] The destination ip of the egress entry.
  /// [entryType] The entry type of the egress entry. It must be `custom` or `system`. Default value is `custom`.
  /// [name] The name of the egress entry.
  /// [policy] The policy of the egress entry. It must be `accept` or `drop`.
  /// [port] The port of the egress entry.
  /// [protocol] The protocol of the egress entry.
  NetworkAclEntriesEgress({
    this.description,
    this.destinationCidrIp,
    this.entryType,
    this.name,
    this.policy,
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationCidrIp': ?destinationCidrIp,
      'entryType': ?entryType,
      'name': ?name,
      'policy': ?policy,
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory NetworkAclEntriesEgress.fromMap(Map<String, dynamic> map) {
    return NetworkAclEntriesEgress(
      description: map['description'] == null ? null : map['description'] as String,
      destinationCidrIp: map['destinationCidrIp'] == null ? null : map['destinationCidrIp'] as String,
      entryType: map['entryType'] == null ? null : map['entryType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

