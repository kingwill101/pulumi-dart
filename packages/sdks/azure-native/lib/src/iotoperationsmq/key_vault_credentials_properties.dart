// ignore_for_file: unused_element, unnecessary_cast


/// KeyVault credentials properties. NOTE - Future this will be ENUM.
class KeyVaultCredentialsProperties {
  /// KeyVault service principal local secret name.
  final String servicePrincipalLocalSecretName;

  /// Creates a new [KeyVaultCredentialsProperties].
  /// [servicePrincipalLocalSecretName] KeyVault service principal local secret name.
  KeyVaultCredentialsProperties({
    required this.servicePrincipalLocalSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servicePrincipalLocalSecretName': servicePrincipalLocalSecretName,
    };
  }

  factory KeyVaultCredentialsProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultCredentialsProperties(
      servicePrincipalLocalSecretName: map['servicePrincipalLocalSecretName'] as String,
    );
  }
}

