// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetwork_secondary_ip_range.dart';

/// Result data returned by getSubnetwork.
class GetSubnetworkResult {
  /// Description of this subnetwork.
  final String description;

  /// The external IPv6 address range that is assigned to this subnetwork.
  final String externalIpv6Prefix;

  /// The IP address of the gateway.
  final String gatewayAddress;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The internal IPv6 address range that is assigned to this subnetwork.
  final String internalIpv6Prefix;

  /// The range of IP addresses belonging to this subnetwork
  /// secondary range.
  final String ipCidrRange;

  /// The access type of IPv6 address this subnet holds. Possible values are: `EXTERNAL`, `INTERNAL`.
  final String ipv6AccessType;
  final String? name;

  /// The network name or resource link to the parent
  /// network of this subnetwork.
  final String network;

  /// Whether the VMs in this subnet
  /// can access Google services without assigned external IP
  /// addresses.
  final bool privateIpGoogleAccess;
  final String project;
  final String region;

  /// An array of configurations for secondary IP ranges for
  /// VM instances contained in this subnetwork. Structure is documented below.
  final List<GetSubnetworkSecondaryIpRange> secondaryIpRanges;
  final String selfLink;

  /// The stack type for the subnet. Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  final String stackType;

  /// The numeric ID of the resource.
  final int subnetworkId;

  /// Creates a new [GetSubnetworkResult].
  /// [description] Description of this subnetwork.
  /// [externalIpv6Prefix] The external IPv6 address range that is assigned to this subnetwork.
  /// [gatewayAddress] The IP address of the gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internalIpv6Prefix] The internal IPv6 address range that is assigned to this subnetwork.
  /// [ipCidrRange] The range of IP addresses belonging to this subnetwork
  /// [ipv6AccessType] The access type of IPv6 address this subnet holds. Possible values are: `EXTERNAL`, `INTERNAL`.
  /// [name] Optional.
  /// [network] The network name or resource link to the parent
  /// [privateIpGoogleAccess] Whether the VMs in this subnet
  /// [project] Required.
  /// [region] Required.
  /// [secondaryIpRanges] An array of configurations for secondary IP ranges for
  /// [selfLink] Required.
  /// [stackType] The stack type for the subnet. Possible values are: `IPV4_ONLY`, `IPV4_IPV6`, `IPV6_ONLY`.
  /// [subnetworkId] The numeric ID of the resource.
  GetSubnetworkResult({
    required this.description,
    required this.externalIpv6Prefix,
    required this.gatewayAddress,
    required this.id,
    required this.internalIpv6Prefix,
    required this.ipCidrRange,
    required this.ipv6AccessType,
    this.name,
    required this.network,
    required this.privateIpGoogleAccess,
    required this.project,
    required this.region,
    required this.secondaryIpRanges,
    required this.selfLink,
    required this.stackType,
    required this.subnetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'externalIpv6Prefix': externalIpv6Prefix,
      'gatewayAddress': gatewayAddress,
      'id': id,
      'internalIpv6Prefix': internalIpv6Prefix,
      'ipCidrRange': ipCidrRange,
      'ipv6AccessType': ipv6AccessType,
      'name': ?name,
      'network': network,
      'privateIpGoogleAccess': privateIpGoogleAccess,
      'project': project,
      'region': region,
      'secondaryIpRanges':
          pulumi.Input.encodeList<
            GetSubnetworkSecondaryIpRange,
            Map<String, dynamic>
          >(secondaryIpRanges, (value) => value.toMap()),
      'selfLink': selfLink,
      'stackType': stackType,
      'subnetworkId': subnetworkId,
    };
  }

  factory GetSubnetworkResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkResult(
      description: map['description'] as String,
      externalIpv6Prefix: map['externalIpv6Prefix'] as String,
      gatewayAddress: map['gatewayAddress'] as String,
      id: map['id'] as String,
      internalIpv6Prefix: map['internalIpv6Prefix'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      ipv6AccessType: map['ipv6AccessType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] as String,
      privateIpGoogleAccess: map['privateIpGoogleAccess'] as bool,
      project: map['project'] as String,
      region: map['region'] as String,
      secondaryIpRanges: pulumi.Input.decodeList<GetSubnetworkSecondaryIpRange>(
        map['secondaryIpRanges'],
        (value) => GetSubnetworkSecondaryIpRange.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      selfLink: map['selfLink'] as String,
      stackType: map['stackType'] as String,
      subnetworkId: map['subnetworkId'] as int,
    );
  }
}
