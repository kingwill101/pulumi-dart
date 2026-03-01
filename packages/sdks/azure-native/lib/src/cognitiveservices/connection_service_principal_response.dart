// ignore_for_file: unused_element, unnecessary_cast


class ConnectionServicePrincipalResponse {
  final String? clientId;
  final String? clientSecret;
  final String? tenantId;

  /// Creates a new [ConnectionServicePrincipalResponse].
  /// [clientId] Optional.
  /// [clientSecret] Optional.
  /// [tenantId] Optional.
  ConnectionServicePrincipalResponse({
    this.clientId,
    this.clientSecret,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'tenantId': ?tenantId,
    };
  }

  factory ConnectionServicePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionServicePrincipalResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

