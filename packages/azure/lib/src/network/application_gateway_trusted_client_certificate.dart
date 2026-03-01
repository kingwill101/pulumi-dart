// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayTrustedClientCertificate {
  /// The base-64 encoded certificate.
  final String data;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The name of the Trusted Client Certificate that is unique within this Application Gateway.
  final String name;

  /// Creates a new [ApplicationGatewayTrustedClientCertificate].
  /// [data] The base-64 encoded certificate.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the Trusted Client Certificate that is unique within this Application Gateway.
  ApplicationGatewayTrustedClientCertificate({
    required this.data,
    this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'id': ?id,
      'name': name,
    };
  }

  factory ApplicationGatewayTrustedClientCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayTrustedClientCertificate(
      data: map['data'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
    );
  }
}

