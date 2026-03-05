// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_dhcp_options_filter.dart';

/// Result data returned by getVpcDhcpOptions.
class GetVpcDhcpOptionsResult {
  /// ARN of the DHCP Options Set.
  final String arn;
  /// EC2 DHCP Options ID
  final String dhcpOptionsId;
  /// Suffix domain name to used when resolving non Fully Qualified Domain NamesE.g., the `search` value in the `/etc/resolv.conf` file.
  final String domainName;
  /// List of name servers.
  final List<String> domainNameServers;
  final List<GetVpcDhcpOptionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal.
  final String ipv6AddressPreferredLeaseTime;
  /// List of NETBIOS name servers.
  final List<String> netbiosNameServers;
  /// NetBIOS node type (1, 2, 4, or 8). For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  final String netbiosNodeType;
  /// List of NTP servers.
  final List<String> ntpServers;
  /// ID of the AWS account that owns the DHCP options set.
  final String ownerId;
  final String region;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetVpcDhcpOptionsResult].
  /// [arn] ARN of the DHCP Options Set.
  /// [dhcpOptionsId] EC2 DHCP Options ID
  /// [domainName] Suffix domain name to used when resolving non Fully Qualified Domain NamesE.g., the `search` value in the `/etc/resolv.conf` file.
  /// [domainNameServers] List of name servers.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipv6AddressPreferredLeaseTime] How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal.
  /// [netbiosNameServers] List of NETBIOS name servers.
  /// [netbiosNodeType] NetBIOS node type (1, 2, 4, or 8). For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  /// [ntpServers] List of NTP servers.
  /// [ownerId] ID of the AWS account that owns the DHCP options set.
  /// [region] Required.
  /// [tags] Map of tags assigned to the resource.
  GetVpcDhcpOptionsResult({
    required this.arn,
    required this.dhcpOptionsId,
    required this.domainName,
    required this.domainNameServers,
    this.filters,
    required this.id,
    required this.ipv6AddressPreferredLeaseTime,
    required this.netbiosNameServers,
    required this.netbiosNodeType,
    required this.ntpServers,
    required this.ownerId,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'dhcpOptionsId': dhcpOptionsId,
      'domainName': domainName,
      'domainNameServers': domainNameServers,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcDhcpOptionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ipv6AddressPreferredLeaseTime': ipv6AddressPreferredLeaseTime,
      'netbiosNameServers': netbiosNameServers,
      'netbiosNodeType': netbiosNodeType,
      'ntpServers': ntpServers,
      'ownerId': ownerId,
      'region': region,
      'tags': tags,
    };
  }

  factory GetVpcDhcpOptionsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcDhcpOptionsResult(
      arn: map['arn'] as String,
      dhcpOptionsId: map['dhcpOptionsId'] as String,
      domainName: map['domainName'] as String,
      domainNameServers: (map['domainNameServers'] as List).cast<String>(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcDhcpOptionsFilter>(guardedValue, (value) => GetVpcDhcpOptionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ipv6AddressPreferredLeaseTime: map['ipv6AddressPreferredLeaseTime'] as String,
      netbiosNameServers: (map['netbiosNameServers'] as List).cast<String>(),
      netbiosNodeType: map['netbiosNodeType'] as String,
      ntpServers: (map['ntpServers'] as List).cast<String>(),
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

