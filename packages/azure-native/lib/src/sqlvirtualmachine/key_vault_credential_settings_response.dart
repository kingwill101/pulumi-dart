// ignore_for_file: unused_element, unnecessary_cast


/// Configure your SQL virtual machine to be able to connect to the Azure Key Vault service.
class KeyVaultCredentialSettingsResponse {
  /// Azure Key Vault url.
  final String? azureKeyVaultUrl;
  /// Credential name.
  final String? credentialName;
  /// Enable or disable key vault credential setting.
  final bool? enable;
  /// Service principal name to access key vault.
  final String? servicePrincipalName;

  /// Creates a new [KeyVaultCredentialSettingsResponse].
  /// [azureKeyVaultUrl] Azure Key Vault url.
  /// [credentialName] Credential name.
  /// [enable] Enable or disable key vault credential setting.
  /// [servicePrincipalName] Service principal name to access key vault.
  KeyVaultCredentialSettingsResponse({
    this.azureKeyVaultUrl,
    this.credentialName,
    this.enable,
    this.servicePrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureKeyVaultUrl': ?azureKeyVaultUrl,
      'credentialName': ?credentialName,
      'enable': ?enable,
      'servicePrincipalName': ?servicePrincipalName,
    };
  }

  factory KeyVaultCredentialSettingsResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultCredentialSettingsResponse(
      azureKeyVaultUrl: map['azureKeyVaultUrl'] == null ? null : map['azureKeyVaultUrl'] as String,
      credentialName: map['credentialName'] == null ? null : map['credentialName'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      servicePrincipalName: map['servicePrincipalName'] == null ? null : map['servicePrincipalName'] as String,
    );
  }
}

