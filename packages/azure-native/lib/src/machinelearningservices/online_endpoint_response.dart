// ignore_for_file: unused_element, unnecessary_cast


/// Online endpoint configuration
class OnlineEndpointResponse {
  /// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
  final String authMode;
  /// ARM resource ID of the compute if it exists.
  /// optional
  final String? compute;
  /// Description of the inference endpoint.
  final String? description;
  /// Percentage of traffic to be mirrored to each deployment without using returned scoring. Traffic values need to sum to utmost 50.
  final Map<String, int>? mirrorTraffic;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// Provisioning state for the endpoint.
  final String provisioningState;
  /// Set to "Enabled" for endpoints that should allow public access when Private Link is enabled.
  final String? publicNetworkAccess;
  /// Endpoint URI.
  final String scoringUri;
  /// Endpoint Swagger URI.
  final String swaggerUri;
  /// Percentage of traffic from endpoint to divert to each deployment. Traffic values need to sum to 100.
  final Map<String, int>? traffic;

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
      authMode: map['authMode'] as String,
      compute: map['compute'] == null ? null : map['compute'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      mirrorTraffic: map['mirrorTraffic'] == null ? null : (map['mirrorTraffic'] as Map).cast<String, int>(),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      scoringUri: map['scoringUri'] as String,
      swaggerUri: map['swaggerUri'] as String,
      traffic: map['traffic'] == null ? null : (map['traffic'] as Map).cast<String, int>(),
    );
  }
}

