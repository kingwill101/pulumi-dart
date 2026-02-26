// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../managed_zone_cloud_logging_config/managed_zone_cloud_logging_config.dart';
import '../managed_zone_dnssec_config/managed_zone_dnssec_config.dart';
import '../managed_zone_forwarding_config/managed_zone_forwarding_config.dart';
import '../managed_zone_peering_config/managed_zone_peering_config.dart';
import '../managed_zone_private_visibility_config/managed_zone_private_visibility_config.dart';
import '../managed_zone_service_directory_config/managed_zone_service_directory_config.dart';

/// The set of arguments for ManagedZone.
class ManagedZoneArgs {
  /// Cloud logging configuration
  /// Structure is documented below.
  final Input<ManagedZoneCloudLoggingConfig>? cloudLoggingConfig;

  /// A textual description field. Defaults to 'Managed by Pulumi'.
  final Input<String>? description;

  /// The DNS name of this managed zone, for instance "example.com.".
  final Input<String> dnsName;

  /// DNSSEC configuration
  /// Structure is documented below.
  final Input<ManagedZoneDnssecConfig>? dnssecConfig;

  /// Set this true to delete all records in the zone.
  final Input<bool>? forceDestroy;

  /// The presence for this field indicates that outbound forwarding is enabled
  /// for this zone. The value of this field contains the set of destinations
  /// to forward to.
  /// Structure is documented below.
  final Input<ManagedZoneForwardingConfig>? forwardingConfig;

  /// A set of key/value label pairs to assign to this ManagedZone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// User assigned name for this resource.
  /// Must be unique within the project.
  final Input<String>? name;

  /// The presence of this field indicates that DNS Peering is enabled for this
  /// zone. The value of this field contains the network to peer with.
  /// Structure is documented below.
  final Input<ManagedZonePeeringConfig>? peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud
  /// resources that the zone is visible from. At least one of <span pulumi-lang-nodejs="`gkeClusters`" pulumi-lang-dotnet="`GkeClusters`" pulumi-lang-go="`gkeClusters`" pulumi-lang-python="`gke_clusters`" pulumi-lang-yaml="`gkeClusters`" pulumi-lang-java="`gkeClusters`">`gke_clusters`</span> or <span pulumi-lang-nodejs="`networks`" pulumi-lang-dotnet="`Networks`" pulumi-lang-go="`networks`" pulumi-lang-python="`networks`" pulumi-lang-yaml="`networks`" pulumi-lang-java="`networks`">`networks`</span> must be specified.
  /// Structure is documented below.
  final Input<ManagedZonePrivateVisibilityConfig>? privateVisibilityConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse
  /// lookup queries using automatically configured records for VPC resources. This only applies
  /// to networks listed under <span pulumi-lang-nodejs="`privateVisibilityConfig`" pulumi-lang-dotnet="`PrivateVisibilityConfig`" pulumi-lang-go="`privateVisibilityConfig`" pulumi-lang-python="`private_visibility_config`" pulumi-lang-yaml="`privateVisibilityConfig`" pulumi-lang-java="`privateVisibilityConfig`">`private_visibility_config`</span>.
  final Input<bool>? reverseLookup;

  /// The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone.
  /// Structure is documented below.
  final Input<ManagedZoneServiceDirectoryConfig>? serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet,
  /// while private zones are visible only to Virtual Private Cloud resources.
  /// Default value is <span pulumi-lang-nodejs="`public`" pulumi-lang-dotnet="`Public`" pulumi-lang-go="`public`" pulumi-lang-python="`public`" pulumi-lang-yaml="`public`" pulumi-lang-java="`public`">`public`</span>.
  /// Possible values are: <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>, <span pulumi-lang-nodejs="`public`" pulumi-lang-dotnet="`Public`" pulumi-lang-go="`public`" pulumi-lang-python="`public`" pulumi-lang-yaml="`public`" pulumi-lang-java="`public`">`public`</span>.
  final Input<String>? visibility;

  ManagedZoneArgs({
    this.cloudLoggingConfig,
    this.description,
    required this.dnsName,
    this.dnssecConfig,
    this.forceDestroy,
    this.forwardingConfig,
    this.labels,
    this.name,
    this.peeringConfig,
    this.privateVisibilityConfig,
    this.project,
    this.reverseLookup,
    this.serviceDirectoryConfig,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudLoggingConfigValue = cloudLoggingConfig;
    if (cloudLoggingConfigValue != null) {
      map['cloudLoggingConfig'] = Input.mapOptionalInputValue<
              ManagedZoneCloudLoggingConfig, Map<String, dynamic>>(
          cloudLoggingConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['dnsName'] = dnsName;
    final dnssecConfigValue = dnssecConfig;
    if (dnssecConfigValue != null) {
      map['dnssecConfig'] = Input.mapOptionalInputValue<ManagedZoneDnssecConfig,
          Map<String, dynamic>>(dnssecConfigValue, (value) => value.toMap());
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final forwardingConfigValue = forwardingConfig;
    if (forwardingConfigValue != null) {
      map['forwardingConfig'] = Input.mapOptionalInputValue<
              ManagedZoneForwardingConfig, Map<String, dynamic>>(
          forwardingConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
    final reverseLookupValue = reverseLookup;
    if (reverseLookupValue != null) {
      map['reverseLookup'] = reverseLookupValue;
    }
    final serviceDirectoryConfigValue = serviceDirectoryConfig;
    if (serviceDirectoryConfigValue != null) {
      map['serviceDirectoryConfig'] = Input.mapOptionalInputValue<
              ManagedZoneServiceDirectoryConfig, Map<String, dynamic>>(
          serviceDirectoryConfigValue, (value) => value.toMap());
    }
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] = visibilityValue;
    }
    return map;
  }

  factory ManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs(
      cloudLoggingConfig: Input.asOptionalInput<ManagedZoneCloudLoggingConfig>(
          map['cloudLoggingConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      dnsName: Input.asInput<String>(map['dnsName']),
      dnssecConfig:
          Input.asOptionalInput<ManagedZoneDnssecConfig>(map['dnssecConfig']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      forwardingConfig: Input.asOptionalInput<ManagedZoneForwardingConfig>(
          map['forwardingConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      peeringConfig:
          Input.asOptionalInput<ManagedZonePeeringConfig>(map['peeringConfig']),
      privateVisibilityConfig:
          Input.asOptionalInput<ManagedZonePrivateVisibilityConfig>(
              map['privateVisibilityConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      reverseLookup: Input.asOptionalInput<bool>(map['reverseLookup']),
      serviceDirectoryConfig:
          Input.asOptionalInput<ManagedZoneServiceDirectoryConfig>(
              map['serviceDirectoryConfig']),
      visibility: Input.asOptionalInput<String>(map['visibility']),
    );
  }
}
