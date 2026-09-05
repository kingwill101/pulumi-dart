// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_dhcp_options_filter.dart';

/// Result data returned by getVpcDhcpOptions.
class GetVpcDhcpOptionsResult {
  /// ARN of the DHCP Options Set.
  final String? arn;
  /// EC2 DHCP Options ID
  final String? dhcpOptionsId;
  /// Suffix domain name to used when resolving non Fully Qualified Domain NamesE.g., the `search` value in the `/etc/resolv.conf` file.
  final String? domainName;
  /// List of name servers.
  final List<String>? domainNameServers;
  final List<GetVpcDhcpOptionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal.
  final String? ipv6AddressPreferredLeaseTime;
  /// List of NETBIOS name servers.
  final List<String>? netbiosNameServers;
  /// NetBIOS node type (1, 2, 4, or 8). For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  final String? netbiosNodeType;
  /// List of NTP servers.
  final List<String>? ntpServers;
  /// ID of the AWS account that owns the DHCP options set.
  final String? ownerId;
  final String? region;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

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
  /// [region] Optional.
  /// [tags] Map of tags assigned to the resource.
  const GetVpcDhcpOptionsResult({
    this.arn,
    this.dhcpOptionsId,
    this.domainName,
    this.domainNameServers,
    this.filters,
    this.id,
    this.ipv6AddressPreferredLeaseTime,
    this.netbiosNameServers,
    this.netbiosNodeType,
    this.ntpServers,
    this.ownerId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dhcpOptionsId': ?dhcpOptionsId,
      'domainName': ?domainName,
      'domainNameServers': ?domainNameServers,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcDhcpOptionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipv6AddressPreferredLeaseTime': ?ipv6AddressPreferredLeaseTime,
      'netbiosNameServers': ?netbiosNameServers,
      'netbiosNodeType': ?netbiosNodeType,
      'ntpServers': ?ntpServers,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVpcDhcpOptionsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcDhcpOptionsResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dhcpOptionsId: (() { final guardedValue = map['dhcpOptionsId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainNameServers: (() { final guardedValue = map['domainNameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcDhcpOptionsFilter>(guardedValue, (value) => GetVpcDhcpOptionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6AddressPreferredLeaseTime: (() { final guardedValue = map['ipv6AddressPreferredLeaseTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      netbiosNameServers: (() { final guardedValue = map['netbiosNameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      netbiosNodeType: (() { final guardedValue = map['netbiosNodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ntpServers: (() { final guardedValue = map['ntpServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
