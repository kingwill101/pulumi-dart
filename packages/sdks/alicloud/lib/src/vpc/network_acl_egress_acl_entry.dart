// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclEgressAclEntry {
  /// The description of the outbound rule.
  /// The description must be 1 to 256 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? description;
  /// The destination CIDR block.
  final pulumi.Input<String>? destinationCidrIp;
  /// The route entry type. Value
  /// custom custom rule
  /// system system rules
  /// service Cloud service rules
  final pulumi.Input<String>? entryType;
  /// The IP protocol version of the route entry. Valid values: "Ipv4" and "ipv6'
  final pulumi.Input<String>? ipVersion;
  /// Name of the outbound rule entry.
  /// The name must be 1 to 128 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? networkAclEntryName;
  /// The action to be performed on network traffic that matches the rule. Valid values:
  /// - accept
  /// - drop
  final pulumi.Input<String>? policy;
  /// The destination port range of the outbound rule.
  /// When the Protocol type of the outbound rule is all, icmp, or gre, the port range is - 1/-1, indicating that the port is not restricted.
  /// When the Protocol type of the outbound rule is tcp or udp, the port range is 1 to 65535, and the format is 1/200 or 80/80, indicating port 1 to port 200 or port 80.
  final pulumi.Input<String>? port;
  /// The protocol type. Value:
  /// - icmp: Network Control Message Protocol.
  /// - gre: Generic Routing Encapsulation Protocol.
  /// - tcp: Transmission Control Protocol.
  /// - udp: User Datagram Protocol.
  /// - all: Supports all protocols.
  final pulumi.Input<String>? protocol;

  /// Creates a new [NetworkAclEgressAclEntry].
  /// [description] The description of the outbound rule.
  /// [destinationCidrIp] The destination CIDR block.
  /// [entryType] The route entry type. Value
  /// [ipVersion] The IP protocol version of the route entry. Valid values: "Ipv4" and "ipv6'
  /// [networkAclEntryName] Name of the outbound rule entry.
  /// [policy] The action to be performed on network traffic that matches the rule. Valid values:
  /// [port] The destination port range of the outbound rule.
  /// [protocol] The protocol type. Value:
  const NetworkAclEgressAclEntry({
    this.description,
    this.destinationCidrIp,
    this.entryType,
    this.ipVersion,
    this.networkAclEntryName,
    this.policy,
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationCidrIp': ?destinationCidrIp,
      'entryType': ?entryType,
      'ipVersion': ?ipVersion,
      'networkAclEntryName': ?networkAclEntryName,
      'policy': ?policy,
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory NetworkAclEgressAclEntry.fromMap(Map<String, dynamic> map) {
    return NetworkAclEgressAclEntry(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationCidrIp: (() { final guardedValue = map['destinationCidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryType: (() { final guardedValue = map['entryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAclEntryName: (() { final guardedValue = map['networkAclEntryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

