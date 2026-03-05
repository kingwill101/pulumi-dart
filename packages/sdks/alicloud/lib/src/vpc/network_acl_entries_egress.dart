// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclEntriesEgress {
  /// The description of the egress entry.
  final pulumi.Input<String>? description;
  /// The destination ip of the egress entry.
  final pulumi.Input<String>? destinationCidrIp;
  /// The entry type of the egress entry. It must be `custom` or `system`. Default value is `custom`.
  final pulumi.Input<String>? entryType;
  /// The name of the egress entry.
  final pulumi.Input<String>? name;
  /// The policy of the egress entry. It must be `accept` or `drop`.
  final pulumi.Input<String>? policy;
  /// The port of the egress entry.
  final pulumi.Input<String>? port;
  /// The protocol of the egress entry.
  final pulumi.Input<String>? protocol;

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationCidrIp: (() { final guardedValue = map['destinationCidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryType: (() { final guardedValue = map['entryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

