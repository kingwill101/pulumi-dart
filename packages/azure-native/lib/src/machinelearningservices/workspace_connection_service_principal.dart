// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionServicePrincipal {
  final String? clientId;
  final String? clientSecret;
  final String? tenantId;

  /// Creates a new [WorkspaceConnectionServicePrincipal].
  /// [clientId] Optional.
  /// [clientSecret] Optional.
  /// [tenantId] Optional.
  WorkspaceConnectionServicePrincipal({
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

  factory WorkspaceConnectionServicePrincipal.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionServicePrincipal(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

