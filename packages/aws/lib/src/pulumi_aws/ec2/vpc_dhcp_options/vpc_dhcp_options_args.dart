// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcDhcpOptions.
class VpcDhcpOptionsArgs {
  /// the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the <span pulumi-lang-nodejs="`search`" pulumi-lang-dotnet="`Search`" pulumi-lang-go="`search`" pulumi-lang-python="`search`" pulumi-lang-yaml="`search`" pulumi-lang-java="`search`">`search`</span> value in the `/etc/resolv.conf` file.
  final Input<String>? domainName;

  /// List of name servers to configure in `/etc/resolv.conf`. If you want to use the default AWS nameservers you should set this to `AmazonProvidedDNS`.
  final Input<List<String>>? domainNameServers;

  /// How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
  final Input<String>? ipv6AddressPreferredLeaseTime;

  /// List of NETBIOS name servers.
  final Input<List<String>>? netbiosNameServers;

  /// The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  final Input<String>? netbiosNodeType;

  /// List of NTP servers to configure.
  final Input<List<String>>? ntpServers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final domainNameServersValue = domainNameServers;
    if (domainNameServersValue != null) {
      map['domainNameServers'] = domainNameServersValue;
    }
    final ipv6AddressPreferredLeaseTimeValue = ipv6AddressPreferredLeaseTime;
    if (ipv6AddressPreferredLeaseTimeValue != null) {
      map['ipv6AddressPreferredLeaseTime'] = ipv6AddressPreferredLeaseTimeValue;
    }
    final netbiosNameServersValue = netbiosNameServers;
    if (netbiosNameServersValue != null) {
      map['netbiosNameServers'] = netbiosNameServersValue;
    }
    final netbiosNodeTypeValue = netbiosNodeType;
    if (netbiosNodeTypeValue != null) {
      map['netbiosNodeType'] = netbiosNodeTypeValue;
    }
    final ntpServersValue = ntpServers;
    if (ntpServersValue != null) {
      map['ntpServers'] = ntpServersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VpcDhcpOptionsArgs.fromMap(Map<String, dynamic> map) {
    return VpcDhcpOptionsArgs(
      domainName: Input.asOptionalInput<String>(map['domainName']),
      domainNameServers:
          Input.asOptionalInput<List<String>>(map['domainNameServers']),
      ipv6AddressPreferredLeaseTime:
          Input.asOptionalInput<String>(map['ipv6AddressPreferredLeaseTime']),
      netbiosNameServers:
          Input.asOptionalInput<List<String>>(map['netbiosNameServers']),
      netbiosNodeType: Input.asOptionalInput<String>(map['netbiosNodeType']),
      ntpServers: Input.asOptionalInput<List<String>>(map['ntpServers']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
