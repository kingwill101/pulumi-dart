// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_site_config_scm_ip_restriction_header.dart';

class GetLinuxFunctionAppSiteConfigScmIpRestriction {
  /// The action taken.
  final String action;
  /// The description of the ip restriction rule.
  final String description;
  /// A `headers` block as defined above.
  final List<GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader> headers;
  /// The CIDR notation of the IP or IP Range matched.
  final String ipAddress;
  /// The name which should be used for this Linux Function App.
  final String name;
  /// The priority value of this `ip_restriction`.
  final int priority;
  /// The Service Tag used for this IP Restriction.
  final String serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final String virtualNetworkSubnetId;

  /// Creates a new [GetLinuxFunctionAppSiteConfigScmIpRestriction].
  /// [action] The action taken.
  /// [description] The description of the ip restriction rule.
  /// [headers] A `headers` block as defined above.
  /// [ipAddress] The CIDR notation of the IP or IP Range matched.
  /// [name] The name which should be used for this Linux Function App.
  /// [priority] The priority value of this `ip_restriction`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  GetLinuxFunctionAppSiteConfigScmIpRestriction({
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
      'headers': pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetLinuxFunctionAppSiteConfigScmIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfigScmIpRestriction(
      action: map['action'] as String,
      description: map['description'] as String,
      headers: pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader>(map['headers'], (value) => GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader.fromMap((value as Map).cast<String, dynamic>())),
      ipAddress: map['ipAddress'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      serviceTag: map['serviceTag'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
    );
  }
}

