// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_site_config_ip_restriction_header.dart';

class GetLinuxWebAppSiteConfigIpRestriction {
  /// A `action` block as defined above.
  final String action;
  /// The description of the ip restriction rule.
  final String description;
  final List<GetLinuxWebAppSiteConfigIpRestrictionHeader> headers;
  /// The CIDR notation of the IP or IP Range to match.
  final String ipAddress;
  /// The name of this Linux Web App.
  final String name;
  /// The priority value of this `ip_restriction`.
  final int priority;
  /// The Service Tag used for this IP Restriction.
  final String serviceTag;
  /// The subnet id which the Linux Web App is vNet Integrated with.
  final String virtualNetworkSubnetId;

  /// Creates a new [GetLinuxWebAppSiteConfigIpRestriction].
  /// [action] A `action` block as defined above.
  /// [description] The description of the ip restriction rule.
  /// [headers] Required.
  /// [ipAddress] The CIDR notation of the IP or IP Range to match.
  /// [name] The name of this Linux Web App.
  /// [priority] The priority value of this `ip_restriction`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The subnet id which the Linux Web App is vNet Integrated with.
  GetLinuxWebAppSiteConfigIpRestriction({
    required this.action,
    required this.description,
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
      'description': description,
      'headers': pulumi.Input.encodeList<GetLinuxWebAppSiteConfigIpRestrictionHeader, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetLinuxWebAppSiteConfigIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigIpRestriction(
      action: map['action'] as String,
      description: map['description'] as String,
      headers: pulumi.Input.decodeList<GetLinuxWebAppSiteConfigIpRestrictionHeader>(map['headers'], (value) => GetLinuxWebAppSiteConfigIpRestrictionHeader.fromMap((value as Map).cast<String, dynamic>())),
      ipAddress: map['ipAddress'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      serviceTag: map['serviceTag'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
    );
  }
}

