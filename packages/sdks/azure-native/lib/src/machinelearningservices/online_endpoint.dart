// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_auth_keys.dart';

/// Online endpoint configuration
class OnlineEndpoint {
  /// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  final String authMode;
  /// ARM resource ID of the compute if it exists.
  /// optional
  final String? compute;
  /// Description of the inference endpoint.
  final String? description;
  /// EndpointAuthKeys to set initially on an Endpoint.
  /// This property will always be returned as null. AuthKey values must be retrieved using the ListKeys API.
  final EndpointAuthKeys? keys;
  /// Percentage of traffic to be mirrored to each deployment without using returned scoring. Traffic values need to sum to utmost 50.
  final Map<String, int>? mirrorTraffic;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// Set to "Enabled" for endpoints that should allow public access when Private Link is enabled.
  final String? publicNetworkAccess;
  /// Percentage of traffic from endpoint to divert to each deployment. Traffic values need to sum to 100.
  final Map<String, int>? traffic;

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
      'keys': ?keys == null ? null : keys!.toMap(),
      'mirrorTraffic': ?mirrorTraffic,
      'properties': ?properties,
      'publicNetworkAccess': ?publicNetworkAccess,
      'traffic': ?traffic,
    };
  }

  factory OnlineEndpoint.fromMap(Map<String, dynamic> map) {
    return OnlineEndpoint(
      authMode: map['authMode'] as String,
      compute: map['compute'] == null ? null : map['compute'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      keys: map['keys'] == null ? null : EndpointAuthKeys.fromMap((map['keys'] as Map).cast<String, dynamic>()),
      mirrorTraffic: map['mirrorTraffic'] == null ? null : (map['mirrorTraffic'] as Map).cast<String, int>(),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      traffic: map['traffic'] == null ? null : (map['traffic'] as Map).cast<String, int>(),
    );
  }
}

