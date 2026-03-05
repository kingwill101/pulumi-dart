// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Online endpoint configuration
class OnlineEndpointResponse {
  /// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  final pulumi.Input<String> authMode;
  /// ARM resource ID of the compute if it exists.
  /// optional
  final pulumi.Input<String>? compute;
  /// Description of the inference endpoint.
  final pulumi.Input<String>? description;
  /// Percentage of traffic to be mirrored to each deployment without using returned scoring. Traffic values need to sum to utmost 50.
  final pulumi.Input<Map<String, int>>? mirrorTraffic;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the endpoint.
  final pulumi.Input<String> provisioningState;
  /// Set to "Enabled" for endpoints that should allow public access when Private Link is enabled.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Endpoint URI.
  final pulumi.Input<String> scoringUri;
  /// Endpoint Swagger URI.
  final pulumi.Input<String> swaggerUri;
  /// Percentage of traffic from endpoint to divert to each deployment. Traffic values need to sum to 100.
  final pulumi.Input<Map<String, int>>? traffic;

  /// Creates a new [OnlineEndpointResponse].
  /// [authMode] [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  /// [compute] ARM resource ID of the compute if it exists.
  /// [description] Description of the inference endpoint.
  /// [mirrorTraffic] Percentage of traffic to be mirrored to each deployment without using returned scoring. Traffic values need to sum to utmost 50.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [provisioningState] Provisioning state for the endpoint.
  /// [publicNetworkAccess] Set to "Enabled" for endpoints that should allow public access when Private Link is enabled.
  /// [scoringUri] Endpoint URI.
  /// [swaggerUri] Endpoint Swagger URI.
  /// [traffic] Percentage of traffic from endpoint to divert to each deployment. Traffic values need to sum to 100.
  OnlineEndpointResponse({
    required this.authMode,
    this.compute,
    this.description,
    this.mirrorTraffic,
    this.properties,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.scoringUri,
    required this.swaggerUri,
    this.traffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'compute': ?compute,
      'description': ?description,
      'mirrorTraffic': ?mirrorTraffic,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'scoringUri': scoringUri,
      'swaggerUri': swaggerUri,
      'traffic': ?traffic,
    };
  }

  factory OnlineEndpointResponse.fromMap(Map<String, dynamic> map) {
    return OnlineEndpointResponse(
      authMode: pulumi.Input.fromValue(map['authMode'] as String),
      compute: (() { final guardedValue = map['compute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorTraffic: (() { final guardedValue = map['mirrorTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scoringUri: pulumi.Input.fromValue(map['scoringUri'] as String),
      swaggerUri: pulumi.Input.fromValue(map['swaggerUri'] as String),
      traffic: (() { final guardedValue = map['traffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
    );
  }
}

