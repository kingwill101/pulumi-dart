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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? domainNameServers,
    pulumi.Output<String>? ipv6AddressPreferredLeaseTime,
    pulumi.Output<String>? netbiosNameServers,
    pulumi.Output<String>? netbiosNodeType,
    pulumi.Output<String>? ntpServers,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainNameServers = pulumi.Input.asOptionalInput<String>(domainNameServers),
      ipv6AddressPreferredLeaseTime = pulumi.Input.asOptionalInput<String>(ipv6AddressPreferredLeaseTime),
      netbiosNameServers = pulumi.Input.asOptionalInput<String>(netbiosNameServers),
      netbiosNodeType = pulumi.Input.asOptionalInput<String>(netbiosNodeType),
      ntpServers = pulumi.Input.asOptionalInput<String>(ntpServers),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainNameServers: map['domainNameServers'] == null ? null : pulumi.Output.create<String>(map['domainNameServers'] as String),
      ipv6AddressPreferredLeaseTime: map['ipv6AddressPreferredLeaseTime'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressPreferredLeaseTime'] as String),
      netbiosNameServers: map['netbiosNameServers'] == null ? null : pulumi.Output.create<String>(map['netbiosNameServers'] as String),
      netbiosNodeType: map['netbiosNodeType'] == null ? null : pulumi.Output.create<String>(map['netbiosNodeType'] as String),
      ntpServers: map['ntpServers'] == null ? null : pulumi.Output.create<String>(map['ntpServers'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

