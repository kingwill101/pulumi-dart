// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefaultSecurityGroupEgress {
  /// List of CIDR blocks.
  final pulumi.Input<List<String>>? cidrBlocks;

  /// Description of this rule.
  final pulumi.Input<String>? description;

  /// Start port (or ICMP type number if protocol is `icmp`)
  final pulumi.Input<int> fromPort;

  /// List of IPv6 CIDR blocks.
  final pulumi.Input<List<String>>? ipv6CidrBlocks;

  /// List of prefix list IDs (for allowing access to VPC endpoints)
  final pulumi.Input<List<String>>? prefixListIds;

  /// Protocol. If you select a protocol of "-1" (semantically equivalent to `all`, which is not a valid value here), you must specify a `from_port` and `to_port` equal to `0`. If not `icmp`, `tcp`, `udp`, or `-1` use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).
  final pulumi.Input<String> protocol;

  /// List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
  final pulumi.Input<List<String>>? securityGroups;

  /// Whether the security group itself will be added as a source to this egress rule.
  final pulumi.Input<bool>? self;

  /// End range port (or ICMP code if protocol is `icmp`).
  final pulumi.Input<int> toPort;

  /// Creates a new [DefaultSecurityGroupEgress].
  /// [cidrBlocks] List of CIDR blocks.
  /// [description] Description of this rule.
  /// [fromPort] Start port (or ICMP type number if protocol is `icmp`)
  /// [ipv6CidrBlocks] List of IPv6 CIDR blocks.
  /// [prefixListIds] List of prefix list IDs (for allowing access to VPC endpoints)
  /// [protocol] Protocol. If you select a protocol of "-1" (semantically equivalent to `all`, which is not a valid value here), you must specify a `from_port` and `to_port` equal to `0`. If not `icmp`, `tcp`, `udp`, or `-1` use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).
  /// [securityGroups] List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
  /// [self] Whether the security group itself will be added as a source to this egress rule.
  /// [toPort] End range port (or ICMP code if protocol is `icmp`).
  DefaultSecurityGroupEgress({
    this.cidrBlocks,
    this.description,
    required this.fromPort,
    this.ipv6CidrBlocks,
    this.prefixListIds,
    required this.protocol,
    this.securityGroups,
    this.self,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlocks': ?cidrBlocks,
      'description': ?description,
      'fromPort': fromPort,
      'ipv6CidrBlocks': ?ipv6CidrBlocks,
      'prefixListIds': ?prefixListIds,
      'protocol': protocol,
      'securityGroups': ?securityGroups,
      'self': ?self,
      'toPort': toPort,
    };
  }

  factory DefaultSecurityGroupEgress.fromMap(Map<String, dynamic> map) {
    return DefaultSecurityGroupEgress(
      cidrBlocks: (() {
        final guardedValue = map['cidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fromPort: pulumi.Input.fromValue(map['fromPort'] as int),
      ipv6CidrBlocks: (() {
        final guardedValue = map['ipv6CidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      prefixListIds: (() {
        final guardedValue = map['prefixListIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      securityGroups: (() {
        final guardedValue = map['securityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      self: (() {
        final guardedValue = map['self'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      toPort: pulumi.Input.fromValue(map['toPort'] as int),
    );
  }
}
