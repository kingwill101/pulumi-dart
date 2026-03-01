// ignore_for_file: unused_element, unnecessary_cast


/// DataflowEndpoint Authentication X509 properties
class DataflowEndpointAuthenticationX509Response {
  /// Secret reference of the X.509 certificate.
  final String secretRef;

  /// Creates a new [DataflowEndpointAuthenticationX509Response].
  /// [secretRef] Secret reference of the X.509 certificate.
  DataflowEndpointAuthenticationX509Response({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory DataflowEndpointAuthenticationX509Response.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationX509Response(
      secretRef: map['secretRef'] as String,
    );
  }
}

