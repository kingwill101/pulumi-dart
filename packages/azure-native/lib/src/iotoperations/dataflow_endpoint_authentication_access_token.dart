// ignore_for_file: unused_element, unnecessary_cast


/// DataflowEndpoint Authentication Access Token properties
class DataflowEndpointAuthenticationAccessToken {
  /// Token secret name.
  final String secretRef;

  /// Creates a new [DataflowEndpointAuthenticationAccessToken].
  /// [secretRef] Token secret name.
  DataflowEndpointAuthenticationAccessToken({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory DataflowEndpointAuthenticationAccessToken.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationAccessToken(
      secretRef: map['secretRef'] as String,
    );
  }
}

