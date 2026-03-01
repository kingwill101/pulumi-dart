// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcDhcpOptions resources.
class VpcDhcpOptionsState {
  /// The ARN of the DHCP Options Set.
  final pulumi.Input<String>? arn;
  /// the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the `search` value in the `/etc/resolv.conf` file.
  final pulumi.Input<String>? domainName;
  /// List of name servers to configure in `/etc/resolv.conf`. If you want to use the default AWS nameservers you should set this to `AmazonProvidedDNS`.
  final pulumi.Input<List<String>>? domainNameServers;
  /// How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
  final pulumi.Input<String>? ipv6AddressPreferredLeaseTime;
  /// List of NETBIOS name servers.
  final pulumi.Input<List<String>>? netbiosNameServers;
  /// The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  final pulumi.Input<String>? netbiosNodeType;
  /// List of NTP servers to configure.
  final pulumi.Input<List<String>>? ntpServers;
  /// The ID of the AWS account that owns the DHCP options set.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcDhcpOptionsState].
  /// [arn] The ARN of the DHCP Options Set.
  /// [domainName] the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the `search` value in the `/etc/resolv.conf` file.
  /// [domainNameServers] List of name servers to configure in `/etc/resolv.conf`. If you want to use the default AWS nameservers you should set this to `AmazonProvidedDNS`.
  /// [ipv6AddressPreferredLeaseTime] How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
  /// [netbiosNameServers] List of NETBIOS name servers.
  /// [netbiosNodeType] The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  /// [ntpServers] List of NTP servers to configure.
  /// [ownerId] The ID of the AWS account that owns the DHCP options set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VpcDhcpOptionsState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<String>>? domainNameServers,
    pulumi.Output<String>? ipv6AddressPreferredLeaseTime,
    pulumi.Output<List<String>>? netbiosNameServers,
    pulumi.Output<String>? netbiosNodeType,
    pulumi.Output<List<String>>? ntpServers,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainNameServers = pulumi.Input.asOptionalInput<List<String>>(domainNameServers),
      ipv6AddressPreferredLeaseTime = pulumi.Input.asOptionalInput<String>(ipv6AddressPreferredLeaseTime),
      netbiosNameServers = pulumi.Input.asOptionalInput<List<String>>(netbiosNameServers),
      netbiosNodeType = pulumi.Input.asOptionalInput<String>(netbiosNodeType),
      ntpServers = pulumi.Input.asOptionalInput<List<String>>(ntpServers),
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

  factory VpcDhcpOptionsState.fromMap(Map<String, dynamic> map) {
    return VpcDhcpOptionsState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainNameServers: map['domainNameServers'] == null ? null : pulumi.Output.create<List<String>>((map['domainNameServers'] as List).cast<String>()),
      ipv6AddressPreferredLeaseTime: map['ipv6AddressPreferredLeaseTime'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressPreferredLeaseTime'] as String),
      netbiosNameServers: map['netbiosNameServers'] == null ? null : pulumi.Output.create<List<String>>((map['netbiosNameServers'] as List).cast<String>()),
      netbiosNodeType: map['netbiosNodeType'] == null ? null : pulumi.Output.create<String>(map['netbiosNodeType'] as String),
      ntpServers: map['ntpServers'] == null ? null : pulumi.Output.create<List<String>>((map['ntpServers'] as List).cast<String>()),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

