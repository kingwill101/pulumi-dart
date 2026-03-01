// ignore_for_file: unused_element, unnecessary_cast


/// RAI External SafetyProvider schema properties.
class RaiExternalSafetyProviderSchemaProperties {
  /// The Key Vault URI that contains the api key for safety provider urls.
  final String? keyVaultUri;
  /// The managed identity to access the Key Vault.
  final String? managedIdentity;
  /// Safety provider mode sync/async.
  final String? mode;
  /// The unique identifier of the safety provider.
  final String? providerId;
  /// Name of the safety provider.
  final String? providerName;
  /// The name of the secret in Key Vault that contains the api key to access the webhook.
  final String? secretName;
  /// Webhook URL for the safety provider.
  final String? url;

  /// Creates a new [RaiExternalSafetyProviderSchemaProperties].
  /// [keyVaultUri] The Key Vault URI that contains the api key for safety provider urls.
  /// [managedIdentity] The managed identity to access the Key Vault.
  /// [mode] Safety provider mode sync/async.
  /// [providerId] The unique identifier of the safety provider.
  /// [providerName] Name of the safety provider.
  /// [secretName] The name of the secret in Key Vault that contains the api key to access the webhook.
  /// [url] Webhook URL for the safety provider.
  RaiExternalSafetyProviderSchemaProperties({
    this.keyVaultUri,
    this.managedIdentity,
    this.mode,
    this.providerId,
    this.providerName,
    this.secretName,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUri': ?keyVaultUri,
      'managedIdentity': ?managedIdentity,
      'mode': ?mode,
      'providerId': ?providerId,
      'providerName': ?providerName,
      'secretName': ?secretName,
      'url': ?url,
    };
  }

  factory RaiExternalSafetyProviderSchemaProperties.fromMap(Map<String, dynamic> map) {
    return RaiExternalSafetyProviderSchemaProperties(
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      managedIdentity: map['managedIdentity'] == null ? null : map['managedIdentity'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      providerId: map['providerId'] == null ? null : map['providerId'] as String,
      providerName: map['providerName'] == null ? null : map['providerName'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

