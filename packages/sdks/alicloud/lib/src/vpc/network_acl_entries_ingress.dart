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
  const NetworkAclEntriesIngress({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryType: (() { final guardedValue = map['entryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCidrIp: (() { final guardedValue = map['sourceCidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

