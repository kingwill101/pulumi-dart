// ignore_for_file: unused_element, unnecessary_cast

/// Message describing Azure Credentials using tenant ID, client ID and secret.
class ClientSecretCredentialsVmmigrationV1alpha1 {
  /// Azure client ID.
  final String? clientId;

  /// Input only. Azure client secret.
  final String? clientSecret;

  /// Azure tenant ID.
  final String? tenantId;

  /// Creates a new [ClientSecretCredentialsVmmigrationV1alpha1].
  /// [clientId] Azure client ID.
  /// [clientSecret] Input only. Azure client secret.
  /// [tenantId] Azure tenant ID.
  ClientSecretCredentialsVmmigrationV1alpha1({
    this.clientId,
    this.clientSecret,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final tenantIdValue = tenantId;
    if (tenantIdValue != null) {
      map['tenantId'] = tenantIdValue;
    }
    return map;
  }

  factory ClientSecretCredentialsVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ClientSecretCredentialsVmmigrationV1alpha1(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}
