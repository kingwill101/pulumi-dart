// ignore_for_file: unused_element, unnecessary_cast

import 'get_standard_site_config_scm_ip_restriction_headers.dart';

class GetStandardSiteConfigScmIpRestriction {
  /// Does this restriction `Allow` or `Deny` access for this IP range.
  final String action;
  /// The `headers` block for this specific `ip_restriction` as defined below.
  final GetStandardSiteConfigScmIpRestrictionHeaders headers;
  /// The IP Address used for this IP Restriction in CIDR notation.
  final String ipAddress;
  /// The name of the Logic App.
  final String name;
  /// The priority for this IP Restriction. Restrictions are enforced in priority order.
  final int priority;
  /// The Service Tag used for this IP Restriction.
  final String serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final String virtualNetworkSubnetId;

  /// Creates a new [GetStandardSiteConfigScmIpRestriction].
  /// [action] Does this restriction `Allow` or `Deny` access for this IP range.
  /// [headers] The `headers` block for this specific `ip_restriction` as defined below.
  /// [ipAddress] The IP Address used for this IP Restriction in CIDR notation.
  /// [name] The name of the Logic App.
  /// [priority] The priority for this IP Restriction. Restrictions are enforced in priority order.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  GetStandardSiteConfigScmIpRestriction({
    required this.action,
    required this.headers,
    required this.ipAddress,
    required this.name,
    required this.priority,
    required this.serviceTag,
    required this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'headers': headers.toMap(),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetStandardSiteConfigScmIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetStandardSiteConfigScmIpRestriction(
      action: map['action'] as String,
      headers: GetStandardSiteConfigScmIpRestrictionHeaders.fromMap((map['headers'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      serviceTag: map['serviceTag'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
    );
  }
}

