// ignore_for_file: unused_element, unnecessary_cast


/// Authentication certificates of an application gateway.
class ApplicationGatewayAuthenticationCertificate {
  /// Certificate public data.
  final String? data;
  /// Resource ID.
  final String? id;
  /// Name of the authentication certificate that is unique within an Application Gateway.
  final String? name;

  /// Creates a new [ApplicationGatewayAuthenticationCertificate].
  /// [data] Certificate public data.
  /// [id] Resource ID.
  /// [name] Name of the authentication certificate that is unique within an Application Gateway.
  ApplicationGatewayAuthenticationCertificate({
    this.data,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'id': ?id,
      'name': ?name,
    };
  }

  factory ApplicationGatewayAuthenticationCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAuthenticationCertificate(
      data: map['data'] == null ? null : map['data'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

