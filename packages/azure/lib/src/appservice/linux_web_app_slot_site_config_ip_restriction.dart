// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_slot_site_config_ip_restriction_headers.dart';

class LinuxWebAppSlotSiteConfigIpRestriction {
  /// The action to take. Possible values are `Allow` or `Deny`. Defaults to `Allow`.
  final String? action;
  /// The Description of this IP Restriction.
  final String? description;
  /// A `headers` block as defined above.
  final LinuxWebAppSlotSiteConfigIpRestrictionHeaders? headers;
  /// The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32`
  final String? ipAddress;
  /// The name which should be used for this `ip_restriction`.
  final String? name;
  /// The priority value of this `ip_restriction`. Defaults to `65000`.
  final int? priority;
  /// The Service Tag used for this IP Restriction.
  final String? serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  ///
  /// > **Note:** One and only one of `ip_address`, `service_tag` or `virtual_network_subnet_id` must be specified.
  final String? virtualNetworkSubnetId;

  /// Creates a new [LinuxWebAppSlotSiteConfigIpRestriction].
  /// [action] The action to take. Possible values are `Allow` or `Deny`. Defaults to `Allow`.
  /// [description] The Description of this IP Restriction.
  /// [headers] A `headers` block as defined above.
  /// [ipAddress] The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32`
  /// [name] The name which should be used for this `ip_restriction`.
  /// [priority] The priority value of this `ip_restriction`. Defaults to `65000`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  LinuxWebAppSlotSiteConfigIpRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'headers': ?headers == null ? null : headers!.toMap(),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'serviceTag': ?serviceTag,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory LinuxWebAppSlotSiteConfigIpRestriction.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotSiteConfigIpRestriction(
      action: map['action'] == null ? null : map['action'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null ? null : LinuxWebAppSlotSiteConfigIpRestrictionHeaders.fromMap((map['headers'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      serviceTag: map['serviceTag'] == null ? null : map['serviceTag'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : map['virtualNetworkSubnetId'] as String,
    );
  }
}

