// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefaultSecurityGroupIngress {
  /// List of CIDR blocks.
  final pulumi.Input<List<String>>? cidrBlocks;
  /// Description of the security group.
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

  /// Creates a new [DefaultSecurityGroupIngress].
  /// [cidrBlocks] List of CIDR blocks.
  /// [description] Description of the security group.
  /// [fromPort] Start port (or ICMP type number if protocol is `icmp`)
  /// [ipv6CidrBlocks] List of IPv6 CIDR blocks.
  /// [prefixListIds] List of prefix list IDs (for allowing access to VPC endpoints)
  /// [protocol] Protocol. If you select a protocol of "-1" (semantically equivalent to `all`, which is not a valid value here), you must specify a `from_port` and `to_port` equal to `0`. If not `icmp`, `tcp`, `udp`, or `-1` use the [protocol number](https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).
  /// [securityGroups] List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
  /// [self] Whether the security group itself will be added as a source to this egress rule.
  /// [toPort] End range port (or ICMP code if protocol is `icmp`).
  DefaultSecurityGroupIngress({
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

  factory DefaultSecurityGroupIngress.fromMap(Map<String, dynamic> map) {
    return DefaultSecurityGroupIngress(
      cidrBlocks: map['cidrBlocks'] == null ? null : ((map['cidrBlocks'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fromPort: (map['fromPort'] as int).input(),
      ipv6CidrBlocks: map['ipv6CidrBlocks'] == null ? null : ((map['ipv6CidrBlocks'] as List).cast<String>()).input(),
      prefixListIds: map['prefixListIds'] == null ? null : ((map['prefixListIds'] as List).cast<String>()).input(),
      protocol: (map['protocol'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups'] as List).cast<String>()).input(),
      self: map['self'] == null ? null : (map['self'] as bool).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

