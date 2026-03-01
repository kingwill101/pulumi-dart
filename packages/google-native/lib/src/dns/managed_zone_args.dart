// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_cloud_logging_config.dart';
import 'managed_zone_dns_sec_config.dart';
import 'managed_zone_forwarding_config.dart';
import 'managed_zone_peering_config.dart';
import 'managed_zone_private_visibility_config.dart';
import 'managed_zone_reverse_lookup_config.dart';
import 'managed_zone_service_directory_config.dart';
import 'managed_zone_visibility.dart';

/// {@template pulumi_dns_v1_managed_zone_args_doc}
/// The set of arguments for ManagedZone.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_managed_zone_args_doc}
class ManagedZoneArgs {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<ManagedZoneCloudLoggingConfig>? cloudLoggingConfig;

  /// The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  final pulumi.Input<String>? creationTime;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  final pulumi.Input<String>? description;

  /// The DNS name of this managed zone, for instance "example.com.".
  final pulumi.Input<String>? dnsName;

  /// DNSSEC configuration.
  final pulumi.Input<ManagedZoneDnsSecConfig>? dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  final pulumi.Input<ManagedZoneForwardingConfig>? forwardingConfig;
  final pulumi.Input<String>? kind;

  /// User labels.
  final pulumi.Input<Map<String, String>>? labels;

  /// User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  final pulumi.Input<String>? name;

  /// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  final pulumi.Input<String>? nameServerSet;

  /// The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  final pulumi.Input<ManagedZonePeeringConfig>? peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  final pulumi.Input<ManagedZonePrivateVisibilityConfig>?
  privateVisibilityConfig;
  final pulumi.Input<String>? project;

  /// The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  final pulumi.Input<ManagedZoneReverseLookupConfig>? reverseLookupConfig;

  /// This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  final pulumi.Input<ManagedZoneServiceDirectoryConfig>? serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  final pulumi.Input<ManagedZoneVisibility>? visibility;

  /// Creates a new [ManagedZoneArgs].
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
  ManagedZoneArgs({
    String? clientOperationId,
    ManagedZoneCloudLoggingConfig? cloudLoggingConfig,
    String? creationTime,
    String? description,
    String? dnsName,
    ManagedZoneDnsSecConfig? dnssecConfig,
    ManagedZoneForwardingConfig? forwardingConfig,
    String? kind,
    Map<String, String>? labels,
    String? name,
    String? nameServerSet,
    ManagedZonePeeringConfig? peeringConfig,
    ManagedZonePrivateVisibilityConfig? privateVisibilityConfig,
    String? project,
    ManagedZoneReverseLookupConfig? reverseLookupConfig,
    ManagedZoneServiceDirectoryConfig? serviceDirectoryConfig,
    ManagedZoneVisibility? visibility,
  }) : clientOperationId = pulumi.Input.asOptionalInput<String>(
         clientOperationId,
       ),
       cloudLoggingConfig =
           pulumi.Input.asOptionalInput<ManagedZoneCloudLoggingConfig>(
             cloudLoggingConfig,
           ),
       creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
       description = pulumi.Input.asOptionalInput<String>(description),
       dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
       dnssecConfig = pulumi.Input.asOptionalInput<ManagedZoneDnsSecConfig>(
         dnssecConfig,
       ),
       forwardingConfig =
           pulumi.Input.asOptionalInput<ManagedZoneForwardingConfig>(
             forwardingConfig,
           ),
       kind = pulumi.Input.asOptionalInput<String>(kind),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       nameServerSet = pulumi.Input.asOptionalInput<String>(nameServerSet),
       peeringConfig = pulumi.Input.asOptionalInput<ManagedZonePeeringConfig>(
         peeringConfig,
       ),
       privateVisibilityConfig =
           pulumi.Input.asOptionalInput<ManagedZonePrivateVisibilityConfig>(
             privateVisibilityConfig,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       reverseLookupConfig =
           pulumi.Input.asOptionalInput<ManagedZoneReverseLookupConfig>(
             reverseLookupConfig,
           ),
       serviceDirectoryConfig =
           pulumi.Input.asOptionalInput<ManagedZoneServiceDirectoryConfig>(
             serviceDirectoryConfig,
           ),
       visibility = pulumi.Input.asOptionalInput<ManagedZoneVisibility>(
         visibility,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'cloudLoggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneCloudLoggingConfig,
            Map<String, dynamic>
          >(cloudLoggingConfig, (value) => value.toMap()),
      'creationTime': ?creationTime,
      'description': ?description,
      'dnsName': ?dnsName,
      'dnssecConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneDnsSecConfig,
            Map<String, dynamic>
          >(dnssecConfig, (value) => value.toMap()),
      'forwardingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneForwardingConfig,
            Map<String, dynamic>
          >(forwardingConfig, (value) => value.toMap()),
      'kind': ?kind,
      'labels': ?labels,
      'name': ?name,
      'nameServerSet': ?nameServerSet,
      'peeringConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZonePeeringConfig,
            Map<String, dynamic>
          >(peeringConfig, (value) => value.toMap()),
      'privateVisibilityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZonePrivateVisibilityConfig,
            Map<String, dynamic>
          >(privateVisibilityConfig, (value) => value.toMap()),
      'project': ?project,
      'reverseLookupConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneReverseLookupConfig,
            Map<String, dynamic>
          >(reverseLookupConfig, (value) => value.toMap()),
      'serviceDirectoryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedZoneServiceDirectoryConfig,
            Map<String, dynamic>
          >(serviceDirectoryConfig, (value) => value.toMap()),
      'visibility':
          ?pulumi.Input.mapOptionalInputValue<ManagedZoneVisibility, String>(
            visibility,
            (value) => value.value,
          ),
    };
  }

  factory ManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs(
      clientOperationId: map['clientOperationId'] == null
          ? null
          : map['clientOperationId'] as String,
      cloudLoggingConfig: map['cloudLoggingConfig'] == null
          ? null
          : ManagedZoneCloudLoggingConfig.fromMap(
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
          : ManagedZoneDnsSecConfig.fromMap(
              (map['dnssecConfig'] as Map).cast<String, dynamic>(),
            ),
      forwardingConfig: map['forwardingConfig'] == null
          ? null
          : ManagedZoneForwardingConfig.fromMap(
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
          : ManagedZonePeeringConfig.fromMap(
              (map['peeringConfig'] as Map).cast<String, dynamic>(),
            ),
      privateVisibilityConfig: map['privateVisibilityConfig'] == null
          ? null
          : ManagedZonePrivateVisibilityConfig.fromMap(
              (map['privateVisibilityConfig'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      reverseLookupConfig: map['reverseLookupConfig'] == null
          ? null
          : ManagedZoneReverseLookupConfig.fromMap(
              (map['reverseLookupConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null
          ? null
          : ManagedZoneServiceDirectoryConfig.fromMap(
              (map['serviceDirectoryConfig'] as Map).cast<String, dynamic>(),
            ),
      visibility: map['visibility'] == null
          ? null
          : ManagedZoneVisibility.fromValue(map['visibility'] as String),
    );
  }
}
