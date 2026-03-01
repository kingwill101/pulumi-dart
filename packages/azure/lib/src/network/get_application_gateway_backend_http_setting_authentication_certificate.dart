// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayBackendHttpSettingAuthenticationCertificate {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;

  /// Creates a new [GetApplicationGatewayBackendHttpSettingAuthenticationCertificate].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  GetApplicationGatewayBackendHttpSettingAuthenticationCertificate({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetApplicationGatewayBackendHttpSettingAuthenticationCertificate.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayBackendHttpSettingAuthenticationCertificate(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

