// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_cloud_logging_config_dns_v1beta2.dart';
import 'managed_zone_dns_sec_config_dns_v1beta2.dart';
import 'managed_zone_forwarding_config_dns_v1beta2.dart';
import 'managed_zone_peering_config_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_dns_v1beta2.dart';
import 'managed_zone_reverse_lookup_config_dns_v1beta2.dart';
import 'managed_zone_service_directory_config_dns_v1beta2.dart';
import 'managed_zone_visibility_dns_v1beta2.dart';

/// The set of arguments for ManagedZone.
class ManagedZoneDnsV1beta2Args {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<ManagedZoneCloudLoggingConfigDnsV1beta2>?
      cloudLoggingConfig;

  /// The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  final pulumi.Input<String>? creationTime;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  final pulumi.Input<String>? description;

  /// The DNS name of this managed zone, for instance "example.com.".
  final pulumi.Input<String>? dnsName;

  /// DNSSEC configuration.
  final pulumi.Input<ManagedZoneDnsSecConfigDnsV1beta2>? dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  final pulumi.Input<ManagedZoneForwardingConfigDnsV1beta2>? forwardingConfig;
  final pulumi.Input<String>? kind;

  /// User labels.
  final pulumi.Input<Map<String, String>>? labels;

  /// User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  final pulumi.Input<String>? name;

  /// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  final pulumi.Input<String>? nameServerSet;

  /// The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  final pulumi.Input<ManagedZonePeeringConfigDnsV1beta2>? peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  final pulumi.Input<ManagedZonePrivateVisibilityConfigDnsV1beta2>?
      privateVisibilityConfig;
  final pulumi.Input<String>? project;

  /// The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  final pulumi.Input<ManagedZoneReverseLookupConfigDnsV1beta2>?
      reverseLookupConfig;

  /// This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  final pulumi.Input<ManagedZoneServiceDirectoryConfigDnsV1beta2>?
      serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  final pulumi.Input<ManagedZoneVisibilityDnsV1beta2>? visibility;

  ManagedZoneDnsV1beta2Args({
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
      map['cloudLoggingConfig'] = pulumi.Input.mapOptionalInputValue<
              ManagedZoneCloudLoggingConfigDnsV1beta2, Map<String, dynamic>>(
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
      map['dnssecConfig'] = pulumi.Input.mapOptionalInputValue<
          ManagedZoneDnsSecConfigDnsV1beta2,
          Map<String, dynamic>>(dnssecConfigValue, (value) => value.toMap());
    }
    final forwardingConfigValue = forwardingConfig;
    if (forwardingConfigValue != null) {
      map['forwardingConfig'] = pulumi.Input.mapOptionalInputValue<
              ManagedZoneForwardingConfigDnsV1beta2, Map<String, dynamic>>(
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
      map['peeringConfig'] = pulumi.Input.mapOptionalInputValue<
          ManagedZonePeeringConfigDnsV1beta2,
          Map<String, dynamic>>(peeringConfigValue, (value) => value.toMap());
    }
    final privateVisibilityConfigValue = privateVisibilityConfig;
    if (privateVisibilityConfigValue != null) {
      map['privateVisibilityConfig'] = pulumi.Input.mapOptionalInputValue<
              ManagedZonePrivateVisibilityConfigDnsV1beta2,
              Map<String, dynamic>>(
          privateVisibilityConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reverseLookupConfigValue = reverseLookupConfig;
    if (reverseLookupConfigValue != null) {
      map['reverseLookupConfig'] = pulumi.Input.mapOptionalInputValue<
              ManagedZoneReverseLookupConfigDnsV1beta2, Map<String, dynamic>>(
          reverseLookupConfigValue, (value) => value.toMap());
    }
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = pulumi.Input.mapOptionalInputValue<
              ManagedZoneServiceDirectoryConfigDnsV1beta2,
              Map<String, dynamic>>(
          serviceDirectoryConfigValue, (value) => value.toMap());
    }
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] = pulumi.Input.mapOptionalInputValue<
          ManagedZoneVisibilityDnsV1beta2,
          String>(visibilityValue, (value) => value.value);
    }
    return map;
  }

  factory ManagedZoneDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsV1beta2Args(
      clientOperationId:
          pulumi.Input.asOptionalInput<String>(map['clientOperationId']),
      cloudLoggingConfig:
          pulumi.Input.asOptionalInput<ManagedZoneCloudLoggingConfigDnsV1beta2>(
              map['cloudLoggingConfig']),
      creationTime: pulumi.Input.asOptionalInput<String>(map['creationTime']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dnsName: pulumi.Input.asOptionalInput<String>(map['dnsName']),
      dnssecConfig:
          pulumi.Input.asOptionalInput<ManagedZoneDnsSecConfigDnsV1beta2>(
              map['dnssecConfig']),
      forwardingConfig:
          pulumi.Input.asOptionalInput<ManagedZoneForwardingConfigDnsV1beta2>(
              map['forwardingConfig']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nameServerSet: pulumi.Input.asOptionalInput<String>(map['nameServerSet']),
      peeringConfig:
          pulumi.Input.asOptionalInput<ManagedZonePeeringConfigDnsV1beta2>(
              map['peeringConfig']),
      privateVisibilityConfig: pulumi.Input.asOptionalInput<
              ManagedZonePrivateVisibilityConfigDnsV1beta2>(
          map['privateVisibilityConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reverseLookupConfig: pulumi.Input.asOptionalInput<
          ManagedZoneReverseLookupConfigDnsV1beta2>(map['reverseLookupConfig']),
      serviceDirectoryConfig: pulumi.Input.asOptionalInput<
              ManagedZoneServiceDirectoryConfigDnsV1beta2>(
          map['serviceDirectoryConfig']),
      visibility: pulumi.Input.asOptionalInput<ManagedZoneVisibilityDnsV1beta2>(
          map['visibility']),
    );
  }
}
