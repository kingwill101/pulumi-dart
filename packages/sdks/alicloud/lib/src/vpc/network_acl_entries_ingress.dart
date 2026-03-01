// ignore_for_file: unused_element, unnecessary_cast


class NetworkAclEntriesIngress {
  /// The description of the ingress entry.
  final String? description;
  /// The entry type of the ingress entry. It must be `custom` or `system`. Default value is `custom`.
  final String? entryType;
  /// The name of the ingress entry.
  final String? name;
  /// The policy of the ingress entry. It must be `accept` or `drop`.
  final String? policy;
  /// The port of the ingress entry.
  final String? port;
  /// The protocol of the ingress entry.
  final String? protocol;
  /// The source ip of the ingress entry.
  final String? sourceCidrIp;

  /// Creates a new [NetworkAclEntriesIngress].
  /// [description] The description of the ingress entry.
  /// [entryType] The entry type of the ingress entry. It must be `custom` or `system`. Default value is `custom`.
  /// [name] The name of the ingress entry.
  /// [policy] The policy of the ingress entry. It must be `accept` or `drop`.
  /// [port] The port of the ingress entry.
  /// [protocol] The protocol of the ingress entry.
  /// [sourceCidrIp] The source ip of the ingress entry.
  NetworkAclEntriesIngress({
    this.description,
    this.entryType,
    this.name,
    this.policy,
    this.port,
    this.protocol,
    this.sourceCidrIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'entryType': ?entryType,
      'name': ?name,
      'policy': ?policy,
      'port': ?port,
      'protocol': ?protocol,
      'sourceCidrIp': ?sourceCidrIp,
    };
  }

  factory NetworkAclEntriesIngress.fromMap(Map<String, dynamic> map) {
    return NetworkAclEntriesIngress(
      description: map['description'] == null ? null : map['description'] as String,
      entryType: map['entryType'] == null ? null : map['entryType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sourceCidrIp: map['sourceCidrIp'] == null ? null : map['sourceCidrIp'] as String,
    );
  }
}

