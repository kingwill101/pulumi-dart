// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclIngressAclEntry {
  /// Description of the inbound rule.
  /// The description must be 1 to 256 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? description;
  /// The route entry type. Value
  final pulumi.Input<String>? entryType;
  /// The IP protocol version of the route entry. Valid values: "Ipv4" and "ipv6'
  final pulumi.Input<String>? ipVersion;
  /// The name of the inbound rule entry.
  /// The name must be 1 to 128 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? networkAclEntryName;
  /// The action to be performed on network traffic that matches the rule. Valid values:
  /// - accept
  /// - drop
  final pulumi.Input<String>? policy;
  /// The source port range of the inbound rule.
  /// When the Protocol type of the inbound rule is all, icmp, or gre, the port range is - 1/-1, indicating that the port is not restricted.
  /// When the Protocol type of the inbound rule is tcp or udp, the port range is 1 to 65535, and the format is 1/200 or 80/80, indicating port 1 to port 200 or port 80.
  final pulumi.Input<String>? port;
  /// The protocol type. Value:
  /// - icmp: Network Control Message Protocol.
  /// - gre: Generic Routing Encapsulation Protocol.
  /// - tcp: Transmission Control Protocol.
  /// - udp: User Datagram Protocol.
  /// - all: Supports all protocols.
  final pulumi.Input<String>? protocol;
  /// The source CIDR block.
  final pulumi.Input<String>? sourceCidrIp;

  /// Creates a new [NetworkAclIngressAclEntry].
  /// [description] Description of the inbound rule.
  /// [entryType] The route entry type. Value
  /// [ipVersion] The IP protocol version of the route entry. Valid values: "Ipv4" and "ipv6'
  /// [networkAclEntryName] The name of the inbound rule entry.
  /// [policy] The action to be performed on network traffic that matches the rule. Valid values:
  /// [port] The source port range of the inbound rule.
  /// [protocol] The protocol type. Value:
  /// [sourceCidrIp] The source CIDR block.
  const NetworkAclIngressAclEntry({
    this.description,
    this.entryType,
    this.ipVersion,
    this.networkAclEntryName,
    this.policy,
    this.port,
    this.protocol,
    this.sourceCidrIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'entryType': ?entryType,
      'ipVersion': ?ipVersion,
      'networkAclEntryName': ?networkAclEntryName,
      'policy': ?policy,
      'port': ?port,
      'protocol': ?protocol,
      'sourceCidrIp': ?sourceCidrIp,
    };
  }

  factory NetworkAclIngressAclEntry.fromMap(Map<String, dynamic> map) {
    return NetworkAclIngressAclEntry(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryType: (() { final guardedValue = map['entryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAclEntryName: (() { final guardedValue = map['networkAclEntryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCidrIp: (() { final guardedValue = map['sourceCidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

