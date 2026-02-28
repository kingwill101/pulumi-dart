// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_cloud_logging_config_response.dart';
import 'managed_zone_dns_sec_config_response.dart';
import 'managed_zone_forwarding_config_response.dart';
import 'managed_zone_peering_config_response.dart';
import 'managed_zone_private_visibility_config_response.dart';
import 'managed_zone_reverse_lookup_config_response.dart';
import 'managed_zone_service_directory_config_response.dart';

/// Result data returned by getManagedZone.
class GetManagedZoneResult {
  final ManagedZoneCloudLoggingConfigResponse cloudLoggingConfig;

  /// The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  final String creationTime;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  final String description;

  /// The DNS name of this managed zone, for instance "example.com.".
  final String dnsName;

  /// DNSSEC configuration.
  final ManagedZoneDnsSecConfigResponse dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  final ManagedZoneForwardingConfigResponse forwardingConfig;
  final String kind;

  /// User labels.
  final Map<String, String> labels;

  /// User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  final String name;

  /// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  final String nameServerSet;

  /// Delegate your managed_zone to these virtual name servers; defined by the server (output only)
  final List<String> nameServers;

  /// The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  final ManagedZonePeeringConfigResponse peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  final ManagedZonePrivateVisibilityConfigResponse privateVisibilityConfig;

  /// The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  final ManagedZoneReverseLookupConfigResponse reverseLookupConfig;

  /// This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  final ManagedZoneServiceDirectoryConfigResponse serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  final String visibility;

  /// Creates a new [GetManagedZoneResult].
  /// [cloudLoggingConfig] Required.
  /// [creationTime] The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  /// [description] A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  /// [dnsName] The DNS name of this managed zone, for instance "example.com.".
  /// [dnssecConfig] DNSSEC configuration.
  /// [forwardingConfig] The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  /// [kind] Required.
  /// [labels] User labels.
  /// [name] User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  /// [nameServerSet] Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  /// [nameServers] Delegate your managed_zone to these virtual name servers; defined by the server (output only)
  /// [peeringConfig] The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  /// [privateVisibilityConfig] For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  /// [reverseLookupConfig] The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  /// [serviceDirectoryConfig] This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  /// [visibility] The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  GetManagedZoneResult({
    required this.cloudLoggingConfig,
    required this.creationTime,
    required this.description,
    required this.dnsName,
    required this.dnssecConfig,
    required this.forwardingConfig,
    required this.kind,
    required this.labels,
    required this.name,
    required this.nameServerSet,
    required this.nameServers,
    required this.peeringConfig,
    required this.privateVisibilityConfig,
    required this.reverseLookupConfig,
    required this.serviceDirectoryConfig,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudLoggingConfig'] = cloudLoggingConfig.toMap();
    map['creationTime'] = creationTime;
    map['description'] = description;
    map['dnsName'] = dnsName;
    map['dnssecConfig'] = dnssecConfig.toMap();
    map['forwardingConfig'] = forwardingConfig.toMap();
    map['kind'] = kind;
    map['labels'] = labels;
    map['name'] = name;
    map['nameServerSet'] = nameServerSet;
    map['nameServers'] = nameServers;
    map['peeringConfig'] = peeringConfig.toMap();
    map['privateVisibilityConfig'] = privateVisibilityConfig.toMap();
    map['reverseLookupConfig'] = reverseLookupConfig.toMap();
    map['serviceDirectoryConfig'] = serviceDirectoryConfig.toMap();
    map['visibility'] = visibility;
    return map;
  }

  factory GetManagedZoneResult.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneResult(
      cloudLoggingConfig: ManagedZoneCloudLoggingConfigResponse.fromMap(
          (map['cloudLoggingConfig'] as Map).cast<String, dynamic>()),
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      dnsName: map['dnsName'] as String,
      dnssecConfig: ManagedZoneDnsSecConfigResponse.fromMap(
          (map['dnssecConfig'] as Map).cast<String, dynamic>()),
      forwardingConfig: ManagedZoneForwardingConfigResponse.fromMap(
          (map['forwardingConfig'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      nameServerSet: map['nameServerSet'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
      peeringConfig: ManagedZonePeeringConfigResponse.fromMap(
          (map['peeringConfig'] as Map).cast<String, dynamic>()),
      privateVisibilityConfig:
          ManagedZonePrivateVisibilityConfigResponse.fromMap(
              (map['privateVisibilityConfig'] as Map).cast<String, dynamic>()),
      reverseLookupConfig: ManagedZoneReverseLookupConfigResponse.fromMap(
          (map['reverseLookupConfig'] as Map).cast<String, dynamic>()),
      serviceDirectoryConfig: ManagedZoneServiceDirectoryConfigResponse.fromMap(
          (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>()),
      visibility: map['visibility'] as String,
    );
  }
}
