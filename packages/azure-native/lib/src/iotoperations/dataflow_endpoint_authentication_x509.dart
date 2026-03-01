// ignore_for_file: unused_element, unnecessary_cast


/// DataflowEndpoint Authentication X509 properties
class DataflowEndpointAuthenticationX509 {
  /// Secret reference of the X.509 certificate.
  final String secretRef;

  /// Creates a new [DataflowEndpointAuthenticationX509].
  /// [secretRef] Secret reference of the X.509 certificate.
  DataflowEndpointAuthenticationX509({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory DataflowEndpointAuthenticationX509.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationX509(
      secretRef: map['secretRef'] as String,
    );
  }
}

