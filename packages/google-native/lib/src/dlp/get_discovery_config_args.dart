// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_discovery_config_args_doc}
/// Arguments for getDiscoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_discovery_config_args_doc}
class GetDiscoveryConfigArgs {
  final pulumi.Input<String> discoveryConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDiscoveryConfigArgs].
  /// [discoveryConfigId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDiscoveryConfigArgs({
    required String discoveryConfigId,
    required String location,
    String? project,
  }) :
      discoveryConfigId = pulumi.Input.asInput<String>(discoveryConfigId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryConfigId': discoveryConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveryConfigArgs(
      discoveryConfigId: map['discoveryConfigId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

