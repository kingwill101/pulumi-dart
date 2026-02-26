// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'managed_zone_cloud_logging_config.dart';
import 'managed_zone_dns_sec_config.dart';
import 'managed_zone_forwarding_config.dart';
import 'managed_zone_peering_config.dart';
import 'managed_zone_private_visibility_config.dart';
import 'managed_zone_reverse_lookup_config.dart';
import 'managed_zone_service_directory_config.dart';
import 'managed_zone_visibility.dart';

/// The set of arguments for ManagedZone.
class ManagedZoneArgs2 {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final Input<String>? clientOperationId;
  final Input<ManagedZoneCloudLoggingConfig>? cloudLoggingConfig;

  /// The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  final Input<String>? creationTime;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  final Input<String>? description;

  /// The DNS name of this managed zone, for instance "example.com.".
  final Input<String>? dnsName;

  /// DNSSEC configuration.
  final Input<ManagedZoneDnsSecConfig>? dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  final Input<ManagedZoneForwardingConfig>? forwardingConfig;
  final Input<String>? kind;

  /// User labels.
  final Input<Map<String, String>>? labels;

  /// User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  final Input<String>? name;

  /// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  final Input<String>? nameServerSet;

  /// The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  final Input<ManagedZonePeeringConfig>? peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  final Input<ManagedZonePrivateVisibilityConfig>? privateVisibilityConfig;
  final Input<String>? project;

  /// The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  final Input<ManagedZoneReverseLookupConfig>? reverseLookupConfig;

  /// This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  final Input<ManagedZoneServiceDirectoryConfig>? serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  final Input<ManagedZoneVisibility>? visibility;

  ManagedZoneArgs2({
    this.clientOperationId,
    this.cloudLoggingConfig,
    this.creationTime,
    this.description,
    this.dnsName,
    this.dnssecConfig,
    this.forwardingConfig,
    this.kind,
    this.labels,
    this.name,
    this.nameServerSet,
    this.peeringConfig,
    this.privateVisibilityConfig,
    this.project,
    this.reverseLookupConfig,
    this.serviceDirectoryConfig,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final cloudLoggingConfigValue = cloudLoggingConfig;
    if (cloudLoggingConfigValue != null) {
      map['cloudLoggingConfig'] = Input.mapOptionalInputValue<
              ManagedZoneCloudLoggingConfig, Map<String, dynamic>>(
          cloudLoggingConfigValue, (value) => value.toMap());
    }
    final creationTimeValue = creationTime;
    if (creationTimeValue != null) {
      map['creationTime'] = creationTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dnsNameValue = dnsName;
    if (dnsNameValue != null) {
      map['dnsName'] = dnsNameValue;
    }
    final dnssecConfigValue = dnssecConfig;
    if (dnssecConfigValue != null) {
      map['dnssecConfig'] = Input.mapOptionalInputValue<ManagedZoneDnsSecConfig,
          Map<String, dynamic>>(dnssecConfigValue, (value) => value.toMap());
    }
    final forwardingConfigValue = forwardingConfig;
    if (forwardingConfigValue != null) {
      map['forwardingConfig'] = Input.mapOptionalInputValue<
              ManagedZoneForwardingConfig, Map<String, dynamic>>(
          forwardingConfigValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nameServerSetValue = nameServerSet;
    if (nameServerSetValue != null) {
      map['nameServerSet'] = nameServerSetValue;
    }
    final peeringConfigValue = peeringConfig;
    if (peeringConfigValue != null) {
      map['peeringConfig'] = Input.mapOptionalInputValue<
          ManagedZonePeeringConfig,
          Map<String, dynamic>>(peeringConfigValue, (value) => value.toMap());
    }
    final privateVisibilityConfigValue = privateVisibilityConfig;
    if (privateVisibilityConfigValue != null) {
      map['privateVisibilityConfig'] = Input.mapOptionalInputValue<
              ManagedZonePrivateVisibilityConfig, Map<String, dynamic>>(
          privateVisibilityConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reverseLookupConfigValue = reverseLookupConfig;
    if (reverseLookupConfigValue != null) {
      map['reverseLookupConfig'] = Input.mapOptionalInputValue<
              ManagedZoneReverseLookupConfig, Map<String, dynamic>>(
          reverseLookupConfigValue, (value) => value.toMap());
    }
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = Input.mapOptionalInputValue<
              ManagedZoneServiceDirectoryConfig, Map<String, dynamic>>(
          serviceDirectoryConfigValue, (value) => value.toMap());
    }
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] =
          Input.mapOptionalInputValue<ManagedZoneVisibility, String>(
              visibilityValue, (value) => value.value);
    }
    return map;
  }

  factory ManagedZoneArgs2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs2(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      cloudLoggingConfig: Input.asOptionalInput<ManagedZoneCloudLoggingConfig>(
          map['cloudLoggingConfig']),
      creationTime: Input.asOptionalInput<String>(map['creationTime']),
      description: Input.asOptionalInput<String>(map['description']),
      dnsName: Input.asOptionalInput<String>(map['dnsName']),
      dnssecConfig:
          Input.asOptionalInput<ManagedZoneDnsSecConfig>(map['dnssecConfig']),
      forwardingConfig: Input.asOptionalInput<ManagedZoneForwardingConfig>(
          map['forwardingConfig']),
      kind: Input.asOptionalInput<String>(map['kind']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      nameServerSet: Input.asOptionalInput<String>(map['nameServerSet']),
      peeringConfig:
          Input.asOptionalInput<ManagedZonePeeringConfig>(map['peeringConfig']),
      privateVisibilityConfig:
          Input.asOptionalInput<ManagedZonePrivateVisibilityConfig>(
              map['privateVisibilityConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      reverseLookupConfig:
          Input.asOptionalInput<ManagedZoneReverseLookupConfig>(
              map['reverseLookupConfig']),
      serviceDirectoryConfig:
          Input.asOptionalInput<ManagedZoneServiceDirectoryConfig>(
              map['serviceDirectoryConfig']),
      visibility:
          Input.asOptionalInput<ManagedZoneVisibility>(map['visibility']),
    );
  }
}
