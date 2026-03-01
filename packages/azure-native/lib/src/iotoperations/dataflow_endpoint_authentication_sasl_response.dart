// ignore_for_file: unused_element, unnecessary_cast


/// DataflowEndpoint Authentication Sasl properties
class DataflowEndpointAuthenticationSaslResponse {
  /// Type of SASL authentication. Can be PLAIN, SCRAM-SHA-256, or SCRAM-SHA-512.
  final String saslType;
  /// Token secret name.
  final String secretRef;

  /// Creates a new [DataflowEndpointAuthenticationSaslResponse].
  /// [saslType] Type of SASL authentication. Can be PLAIN, SCRAM-SHA-256, or SCRAM-SHA-512.
  /// [secretRef] Token secret name.
  DataflowEndpointAuthenticationSaslResponse({
    required this.saslType,
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'saslType': saslType,
      'secretRef': secretRef,
    };
  }

  factory DataflowEndpointAuthenticationSaslResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationSaslResponse(
      saslType: map['saslType'] as String,
      secretRef: map['secretRef'] as String,
    );
  }
}

