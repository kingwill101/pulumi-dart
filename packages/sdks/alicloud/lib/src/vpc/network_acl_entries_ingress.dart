// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclEntriesIngress {
  /// The description of the ingress entry.
  final pulumi.Input<String>? description;
  /// The entry type of the ingress entry. It must be `custom` or `system`. Default value is `custom`.
  final pulumi.Input<String>? entryType;
  /// The name of the ingress entry.
  final pulumi.Input<String>? name;
  /// The policy of the ingress entry. It must be `accept` or `drop`.
  final pulumi.Input<String>? policy;
  /// The port of the ingress entry.
  final pulumi.Input<String>? port;
  /// The protocol of the ingress entry.
  final pulumi.Input<String>? protocol;
  /// The source ip of the ingress entry.
  final pulumi.Input<String>? sourceCidrIp;

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      entryType: map['entryType'] == null ? null : (map['entryType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      sourceCidrIp: map['sourceCidrIp'] == null ? null : (map['sourceCidrIp']! as String).input(),
    );
  }
}

