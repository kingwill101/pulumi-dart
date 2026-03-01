// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Key Vault secret URIs which store the credentials.
class AzureKeyVaultSmbCredentialsResponse {
  /// The Azure Key Vault secret URI which stores the password. Use empty string to clean-up existing value.
  final String? passwordUri;
  /// The Credentials type.
  /// Expected value is 'AzureKeyVaultSmb'.
  final String type;
  /// The Azure Key Vault secret URI which stores the username. Use empty string to clean-up existing value.
  final String? usernameUri;

  /// Creates a new [AzureKeyVaultSmbCredentialsResponse].
  /// [passwordUri] The Azure Key Vault secret URI which stores the password. Use empty string to clean-up existing value.
  /// [type] The Credentials type.
  /// [usernameUri] The Azure Key Vault secret URI which stores the username. Use empty string to clean-up existing value.
  AzureKeyVaultSmbCredentialsResponse({
    this.passwordUri,
    required this.type,
    this.usernameUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordUri': ?passwordUri,
      'type': type,
      'usernameUri': ?usernameUri,
    };
  }

  factory AzureKeyVaultSmbCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultSmbCredentialsResponse(
      passwordUri: map['passwordUri'] == null ? null : map['passwordUri'] as String,
      type: map['type'] as String,
      usernameUri: map['usernameUri'] == null ? null : map['usernameUri'] as String,
    );
  }
}

