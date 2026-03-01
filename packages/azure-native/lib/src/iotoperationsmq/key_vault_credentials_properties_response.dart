// ignore_for_file: unused_element, unnecessary_cast


/// KeyVault credentials properties. NOTE - Future this will be ENUM.
class KeyVaultCredentialsPropertiesResponse {
  /// KeyVault service principal local secret name.
  final String servicePrincipalLocalSecretName;

  /// Creates a new [KeyVaultCredentialsPropertiesResponse].
  /// [servicePrincipalLocalSecretName] KeyVault service principal local secret name.
  KeyVaultCredentialsPropertiesResponse({
    required this.servicePrincipalLocalSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servicePrincipalLocalSecretName': servicePrincipalLocalSecretName,
    };
  }

  factory KeyVaultCredentialsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultCredentialsPropertiesResponse(
      servicePrincipalLocalSecretName: map['servicePrincipalLocalSecretName'] as String,
    );
  }
}

