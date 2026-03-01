// ignore_for_file: unused_element, unnecessary_cast


/// DataflowEndpoint Authentication Access Token properties
class DataflowEndpointAuthenticationAccessTokenResponse {
  /// Token secret name.
  final String secretRef;

  /// Creates a new [DataflowEndpointAuthenticationAccessTokenResponse].
  /// [secretRef] Token secret name.
  DataflowEndpointAuthenticationAccessTokenResponse({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory DataflowEndpointAuthenticationAccessTokenResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationAccessTokenResponse(
      secretRef: map['secretRef'] as String,
    );
  }
}

