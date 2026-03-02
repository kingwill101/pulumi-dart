// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_auth_keys.dart';

/// Online endpoint configuration
class OnlineEndpoint {
  /// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  final pulumi.Input<String> authMode;
  /// ARM resource ID of the compute if it exists.
  /// optional
  final pulumi.Input<String>? compute;
  /// Description of the inference endpoint.
  final pulumi.Input<String>? description;
  /// EndpointAuthKeys to set initially on an Endpoint.
  /// This property will always be returned as null. AuthKey values must be retrieved using the ListKeys API.
  final pulumi.Input<EndpointAuthKeys>? keys;
  /// Percentage of traffic to be mirrored to each deployment without using returned scoring. Traffic values need to sum to utmost 50.
  final pulumi.Input<Map<String, int>>? mirrorTraffic;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;
  /// Set to "Enabled" for endpoints that should allow public access when Private Link is enabled.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Percentage of traffic from endpoint to divert to each deployment. Traffic values need to sum to 100.
  final pulumi.Input<Map<String, int>>? traffic;

  /// Creates a new [OnlineEndpoint].
  /// [authMode] [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  /// [compute] ARM resource ID of the compute if it exists.
  /// [description] Description of the inference endpoint.
  /// [keys] EndpointAuthKeys to set initially on an Endpoint.
  /// [mirrorTraffic] Percentage of traffic to be mirrored to each deployment without using returned scoring. Traffic values need to sum to utmost 50.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [publicNetworkAccess] Set to "Enabled" for endpoints that should allow public access when Private Link is enabled.
  /// [traffic] Percentage of traffic from endpoint to divert to each deployment. Traffic values need to sum to 100.
  OnlineEndpoint({
    required this.authMode,
    this.compute,
    this.description,
    this.keys,
    this.mirrorTraffic,
    this.properties,
    this.publicNetworkAccess,
    this.traffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'compute': ?compute,
      'description': ?description,
      'keys': ?pulumi.Input.mapOptionalInputValue<EndpointAuthKeys, Map<String, dynamic>>(keys, (value) => value.toMap()),
      'mirrorTraffic': ?mirrorTraffic,
      'properties': ?properties,
      'publicNetworkAccess': ?publicNetworkAccess,
      'traffic': ?traffic,
    };
  }

  factory OnlineEndpoint.fromMap(Map<String, dynamic> map) {
    return OnlineEndpoint(
      authMode: (map['authMode'] as String).input(),
      compute: map['compute'] == null ? null : (map['compute'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      keys: map['keys'] == null ? null : (EndpointAuthKeys.fromMap((map['keys'] as Map).cast<String, dynamic>())).input(),
      mirrorTraffic: map['mirrorTraffic'] == null ? null : ((map['mirrorTraffic'] as Map).cast<String, int>()).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      traffic: map['traffic'] == null ? null : ((map['traffic'] as Map).cast<String, int>()).input(),
    );
  }
}

