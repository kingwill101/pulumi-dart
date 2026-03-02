// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGroupEgress {
  /// List of CIDR blocks.
  final pulumi.Input<List<String>>? cidrBlocks;
  /// Description of this egress rule.
  final pulumi.Input<String>? description;
  /// Start port (or ICMP type number if protocol is `icmp`)
  final pulumi.Input<int> fromPort;
  /// List of IPv6 CIDR blocks.
  final pulumi.Input<List<String>>? ipv6CidrBlocks;
  /// List of Prefix List IDs.
  final pulumi.Input<List<String>>? prefixListIds;
  /// Protocol. If you select a protocol of `-1` (semantically equivalent to `all`, which is not a valid value here), you must specify a `from_port` and `to_port` equal to 0. The supported values are defined in the `IpProtocol` argument in the [IpPermission](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IpPermission.html) API reference.
  final pulumi.Input<String> protocol;
  /// List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
  final pulumi.Input<List<String>>? securityGroups;
  /// Whether the security group itself will be added as a source to this egress rule.
  final pulumi.Input<bool>? self;
  /// End range port (or ICMP code if protocol is `icmp`).
  ///
  /// The following arguments are optional:
  ///
  /// > **Note** Although `cidr_blocks`, `ipv6_cidr_blocks`, `prefix_list_ids`, and `security_groups` are all marked as optional, you _must_ provide one of them in order to configure the destination of the traffic.
  final pulumi.Input<int> toPort;

  /// Creates a new [SecurityGroupEgress].
  /// [cidrBlocks] List of CIDR blocks.
  /// [description] Description of this egress rule.
  /// [fromPort] Start port (or ICMP type number if protocol is `icmp`)
  /// [ipv6CidrBlocks] List of IPv6 CIDR blocks.
  /// [prefixListIds] List of Prefix List IDs.
  /// [protocol] Protocol. If you select a protocol of `-1` (semantically equivalent to `all`, which is not a valid value here), you must specify a `from_port` and `to_port` equal to 0. The supported values are defined in the `IpProtocol` argument in the [IpPermission](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IpPermission.html) API reference.
  /// [securityGroups] List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
  /// [self] Whether the security group itself will be added as a source to this egress rule.
  /// [toPort] End range port (or ICMP code if protocol is `icmp`).
  SecurityGroupEgress({
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

  factory SecurityGroupEgress.fromMap(Map<String, dynamic> map) {
    return SecurityGroupEgress(
      cidrBlocks: map['cidrBlocks'] == null ? null : (((map['cidrBlocks'] as List).cast<String>()).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      fromPort: (map['fromPort'] as int).input(),
      ipv6CidrBlocks: map['ipv6CidrBlocks'] == null ? null : (((map['ipv6CidrBlocks'] as List).cast<String>()).input()).input(),
      prefixListIds: map['prefixListIds'] == null ? null : (((map['prefixListIds'] as List).cast<String>()).input()).input(),
      protocol: (map['protocol'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      self: map['self'] == null ? null : ((map['self'] as bool).input()).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

