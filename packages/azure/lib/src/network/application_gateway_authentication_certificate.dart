// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayAuthenticationCertificate {
  /// The contents of the Authentication Certificate which should be used.
  final String data;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The Name of the Authentication Certificate to use.
  final String name;

  /// Creates a new [ApplicationGatewayAuthenticationCertificate].
  /// [data] The contents of the Authentication Certificate which should be used.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the Authentication Certificate to use.
  ApplicationGatewayAuthenticationCertificate({
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

  factory ApplicationGatewayAuthenticationCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayAuthenticationCertificate(
      data: map['data'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
    );
  }
}

