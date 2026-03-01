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

/// {@template pulumi_dns_v1beta2_managed_zone_dns_v1beta2_args_doc}
/// The set of arguments for ManagedZone.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_managed_zone_dns_v1beta2_args_doc}
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

  /// Creates a new [ManagedZoneDnsV1beta2Args].
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [cloudLoggingConfig] Optional.
  /// [creationTime] The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  /// [description] A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  /// [dnsName] The DNS name of this managed zone, for instance "example.com.".
  /// [dnssecConfig] DNSSEC configuration.
  /// [forwardingConfig] The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  /// [kind] Optional.
  /// [labels] User labels.
  /// [name] User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  /// [nameServerSet] Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  /// [peeringConfig] The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  /// [privateVisibilityConfig] For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  /// [project] Optional.
  /// [reverseLookupConfig] The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  /// [serviceDirectoryConfig] This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  /// [visibility] The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  ManagedZoneDnsV1beta2Args({
    String? clientOperationId,
    ManagedZoneCloudLoggingConfigDnsV1beta2? cloudLoggingConfig,
    String? creationTime,
    String? description,
    String? dnsName,
    ManagedZoneDnsSecConfigDnsV1beta2? dnssecConfig,
    ManagedZoneForwardingConfigDnsV1beta2? forwardingConfig,
    String? kind,
    Map<String, String>? labels,
    String? name,
    String? nameServerSet,
    ManagedZonePeeringConfigDnsV1beta2? peeringConfig,
    ManagedZonePrivateVisibilityConfigDnsV1beta2? privateVisibilityConfig,
    String? project,
    ManagedZoneReverseLookupConfigDnsV1beta2? reverseLookupConfig,
    ManagedZoneServiceDirectoryConfigDnsV1beta2? serviceDirectoryConfig,
    ManagedZoneVisibilityDnsV1beta2? visibility,
  }) : clientOperationId = pulumi.Input.asOptionalInput<String>(
         clientOperationId,
       ),
       cloudLoggingConfig =
           pulumi.Input.asOptionalInput<
             ManagedZoneCloudLoggingConfigDnsV1beta2
           >(cloudLoggingConfig),
       creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
       description = pulumi.Input.asOptionalInput<String>(description),
       dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
       dnssecConfig =
           pulumi.Input.asOptionalInput<ManagedZoneDnsSecConfigDnsV1beta2>(
             dnssecConfig,
           ),
       forwardingConfig =
           pulumi.Input.asOptionalInput<ManagedZoneForwardingConfigDnsV1beta2>(
             forwardingConfig,
           ),
       kind = pulumi.Input.asOptionalInput<String>(kind),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       nameServerSet = pulumi.Input.asOptionalInput<String>(nameServerSet),
       peeringConfig =
           pulumi.Input.asOptionalInput<ManagedZonePeeringConfigDnsV1beta2>(
             peeringConfig,
           ),
       privateVisibilityConfig =
           pulumi.Input.asOptionalInput<
             ManagedZonePrivateVisibilityConfigDnsV1beta2
           >(privateVisibilityConfig),
       project = pulumi.Input.asOptionalInput<String>(project),
       reverseLookupConfig =
           pulumi.Input.asOptionalInput<
             ManagedZoneReverseLookupConfigDnsV1beta2
           >(reverseLookupConfig),
       serviceDirectoryConfig =
           pulumi.Input.asOptionalInput<
             ManagedZoneServiceDirectoryConfigDnsV1beta2
           >(serviceDirectoryConfig),
       visibility = pulumi
           .Input.asOptionalInput<ManagedZoneVisibilityDnsV1beta2>(visibility);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'cloudLoggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneCloudLoggingConfigDnsV1beta2,
            Map<String, dynamic>
          >(cloudLoggingConfig, (value) => value.toMap()),
      'creationTime': ?creationTime,
      'description': ?description,
      'dnsName': ?dnsName,
      'dnssecConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneDnsSecConfigDnsV1beta2,
            Map<String, dynamic>
          >(dnssecConfig, (value) => value.toMap()),
      'forwardingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneForwardingConfigDnsV1beta2,
            Map<String, dynamic>
          >(forwardingConfig, (value) => value.toMap()),
      'kind': ?kind,
      'labels': ?labels,
      'name': ?name,
      'nameServerSet': ?nameServerSet,
      'peeringConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZonePeeringConfigDnsV1beta2,
            Map<String, dynamic>
          >(peeringConfig, (value) => value.toMap()),
      'privateVisibilityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZonePrivateVisibilityConfigDnsV1beta2,
            Map<String, dynamic>
          >(privateVisibilityConfig, (value) => value.toMap()),
      'project': ?project,
      'reverseLookupConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneReverseLookupConfigDnsV1beta2,
            Map<String, dynamic>
          >(reverseLookupConfig, (value) => value.toMap()),
      'serviceDirectoryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneServiceDirectoryConfigDnsV1beta2,
            Map<String, dynamic>
          >(serviceDirectoryConfig, (value) => value.toMap()),
      'visibility':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneVisibilityDnsV1beta2,
            String
          >(visibility, (value) => value.value),
    };
  }

  factory ManagedZoneDnsV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsV1beta2Args(
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      cloudLoggingConfig: map['cloudLoggingConfig'] == null
          ? null
          : ManagedZoneCloudLoggingConfigDnsV1beta2.fromMap(
              (map['cloudLoggingConfig'] as Map).cast<String, dynamic>(),
            ),
      creationTime: map['creationTime'] == null
          ? null
          : map['creationTime'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      dnssecConfig: map['dnssecConfig'] == null
          ? null
          : ManagedZoneDnsSecConfigDnsV1beta2.fromMap(
              (map['dnssecConfig'] as Map).cast<String, dynamic>(),
            ),
      forwardingConfig: map['forwardingConfig'] == null
          ? null
          : ManagedZoneForwardingConfigDnsV1beta2.fromMap(
              (map['forwardingConfig'] as Map).cast<String, dynamic>(),
            ),
      kind: map['kind'] == null ? null : map['kind'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      nameServerSet: map['nameServerSet'] == null
          ? null
          : map['nameServerSet'] as String,
      peeringConfig: map['peeringConfig'] == null
          ? null
          : ManagedZonePeeringConfigDnsV1beta2.fromMap(
              (map['peeringConfig'] as Map).cast<String, dynamic>(),
            ),
      privateVisibilityConfig: map['privateVisibilityConfig'] == null
          ? null
          : ManagedZonePrivateVisibilityConfigDnsV1beta2.fromMap(
              (map['privateVisibilityConfig'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      reverseLookupConfig: map['reverseLookupConfig'] == null
          ? null
          : ManagedZoneReverseLookupConfigDnsV1beta2.fromMap(
              (map['reverseLookupConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ManagedZoneServiceDirectoryConfigDnsV1beta2.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>(),
            ),
      visibility: map['visibility'] == null
          ? null
          : ManagedZoneVisibilityDnsV1beta2.fromValue(
              map['visibility'] as String,
            ),
    );
  }
}
