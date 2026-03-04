// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_dhcp_options_vpc_dhcp_options_args_doc}
/// The set of arguments for VpcDhcpOptions.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_dhcp_options_vpc_dhcp_options_args_doc}
class VpcDhcpOptionsArgs {
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

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VpcDhcpOptionsArgs].
  /// [domainName] the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the `search` value in the `/etc/resolv.conf` file.
  /// [domainNameServers] List of name servers to configure in `/etc/resolv.conf`. If you want to use the default AWS nameservers you should set this to `AmazonProvidedDNS`.
  /// [ipv6AddressPreferredLeaseTime] How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
  /// [netbiosNameServers] List of NETBIOS name servers.
  /// [netbiosNodeType] The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  /// [ntpServers] List of NTP servers to configure.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VpcDhcpOptionsArgs({
    this.domainName,
    this.domainNameServers,
    this.ipv6AddressPreferredLeaseTime,
    this.netbiosNameServers,
    this.netbiosNodeType,
    this.ntpServers,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'domainNameServers': ?domainNameServers,
      'ipv6AddressPreferredLeaseTime': ?ipv6AddressPreferredLeaseTime,
      'netbiosNameServers': ?netbiosNameServers,
      'netbiosNodeType': ?netbiosNodeType,
      'ntpServers': ?ntpServers,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory VpcDhcpOptionsArgs.fromMap(Map<String, dynamic> map) {
    return VpcDhcpOptionsArgs(
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainNameServers: (() {
        final guardedValue = map['domainNameServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipv6AddressPreferredLeaseTime: (() {
        final guardedValue = map['ipv6AddressPreferredLeaseTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netbiosNameServers: (() {
        final guardedValue = map['netbiosNameServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      netbiosNodeType: (() {
        final guardedValue = map['netbiosNodeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ntpServers: (() {
        final guardedValue = map['ntpServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
