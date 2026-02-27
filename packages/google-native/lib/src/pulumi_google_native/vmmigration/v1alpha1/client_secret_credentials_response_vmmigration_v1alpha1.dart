// ignore_for_file: unused_element, unnecessary_cast

/// Message describing Azure Credentials using tenant ID, client ID and secret.
class ClientSecretCredentialsResponseVmmigrationV1alpha1 {
  /// Azure client ID.
  final String clientId;

  /// Input only. Azure client secret.
  final String clientSecret;

  /// Azure tenant ID.
  final String tenantId;

  ClientSecretCredentialsResponseVmmigrationV1alpha1({
    required this.clientId,
    required this.clientSecret,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    map['tenantId'] = tenantId;
    return map;
  }

  factory ClientSecretCredentialsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ClientSecretCredentialsResponseVmmigrationV1alpha1(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}
