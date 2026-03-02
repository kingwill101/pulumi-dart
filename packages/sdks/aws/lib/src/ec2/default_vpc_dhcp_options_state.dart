// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultVpcDhcpOptions resources.
class DefaultVpcDhcpOptionsState {
  /// The ARN of the DHCP Options Set.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? domainName;
  final pulumi.Input<String>? domainNameServers;
  final pulumi.Input<String>? ipv6AddressPreferredLeaseTime;
  /// List of NETBIOS name servers.
  final pulumi.Input<String>? netbiosNameServers;
  /// The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  final pulumi.Input<String>? netbiosNodeType;
  final pulumi.Input<String>? ntpServers;
  /// The ID of the AWS account that owns the DHCP options set.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DefaultVpcDhcpOptionsState].
  /// [arn] The ARN of the DHCP Options Set.
  /// [domainName] Optional.
  /// [domainNameServers] Optional.
  /// [ipv6AddressPreferredLeaseTime] Optional.
  /// [netbiosNameServers] List of NETBIOS name servers.
  /// [netbiosNodeType] The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  /// [ntpServers] Optional.
  /// [ownerId] The ID of the AWS account that owns the DHCP options set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [tags] A map of tags to assign to the resource.
  /// [tagsAll] Optional.
  DefaultVpcDhcpOptionsState({
    this.arn,
    this.domainName,
    this.domainNameServers,
    this.ipv6AddressPreferredLeaseTime,
    this.netbiosNameServers,
    this.netbiosNodeType,
    this.ntpServers,
    this.ownerId,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domainName': ?domainName,
      'domainNameServers': ?domainNameServers,
      'ipv6AddressPreferredLeaseTime': ?ipv6AddressPreferredLeaseTime,
      'netbiosNameServers': ?netbiosNameServers,
      'netbiosNodeType': ?netbiosNodeType,
      'ntpServers': ?ntpServers,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DefaultVpcDhcpOptionsState.fromMap(Map<String, dynamic> map) {
    return DefaultVpcDhcpOptionsState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      domainNameServers: map['domainNameServers'] == null ? null : (map['domainNameServers'] as String).input(),
      ipv6AddressPreferredLeaseTime: map['ipv6AddressPreferredLeaseTime'] == null ? null : (map['ipv6AddressPreferredLeaseTime'] as String).input(),
      netbiosNameServers: map['netbiosNameServers'] == null ? null : (map['netbiosNameServers'] as String).input(),
      netbiosNodeType: map['netbiosNodeType'] == null ? null : (map['netbiosNodeType'] as String).input(),
      ntpServers: map['ntpServers'] == null ? null : (map['ntpServers'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

