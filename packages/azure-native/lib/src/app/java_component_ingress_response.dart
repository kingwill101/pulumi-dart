// ignore_for_file: unused_element, unnecessary_cast


/// Container App Ingress configuration.
class JavaComponentIngressResponse {
  /// Hostname of the Java Component endpoint
  final String fqdn;

  /// Creates a new [JavaComponentIngressResponse].
  /// [fqdn] Hostname of the Java Component endpoint
  JavaComponentIngressResponse({
    required this.fqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
    };
  }

  factory JavaComponentIngressResponse.fromMap(Map<String, dynamic> map) {
    return JavaComponentIngressResponse(
      fqdn: map['fqdn'] as String,
    );
  }
}

