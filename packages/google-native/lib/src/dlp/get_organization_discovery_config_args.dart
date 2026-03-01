// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_organization_discovery_config_args_doc}
/// Arguments for getOrganizationDiscoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_organization_discovery_config_args_doc}
class GetOrganizationDiscoveryConfigArgs {
  final pulumi.Input<String> discoveryConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationDiscoveryConfigArgs].
  /// [discoveryConfigId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationDiscoveryConfigArgs({
    required String discoveryConfigId,
    required String location,
    required String organizationId,
  }) : discoveryConfigId = pulumi.Input.asInput<String>(discoveryConfigId),
       location = pulumi.Input.asInput<String>(location),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryConfigId': discoveryConfigId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationDiscoveryConfigArgs(
      discoveryConfigId: map['discoveryConfigId'] as String,
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
