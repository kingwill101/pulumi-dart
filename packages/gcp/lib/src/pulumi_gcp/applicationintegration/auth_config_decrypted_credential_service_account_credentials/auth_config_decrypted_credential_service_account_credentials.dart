// ignore_for_file: unused_element, unnecessary_cast

class AuthConfigDecryptedCredentialServiceAccountCredentials {
  /// A space-delimited list of requested scope permissions.
  final String? scope;

  /// Name of the service account that has the permission to make the request.
  final String? serviceAccount;

  AuthConfigDecryptedCredentialServiceAccountCredentials({
    this.scope,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory AuthConfigDecryptedCredentialServiceAccountCredentials.fromMap(
      Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialServiceAccountCredentials(
      scope: map['scope'] == null ? null : map['scope'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
    );
  }
}
