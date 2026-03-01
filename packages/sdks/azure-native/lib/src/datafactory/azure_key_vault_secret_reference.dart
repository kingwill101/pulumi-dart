// ignore_for_file: unused_element, unnecessary_cast

import 'linked_service_reference.dart';

/// Azure Key Vault secret reference.
class AzureKeyVaultSecretReference {
  /// The name of the secret in Azure Key Vault. Type: string (or Expression with resultType string).
  final dynamic secretName;
  /// The version of the secret in Azure Key Vault. The default value is the latest version of the secret. Type: string (or Expression with resultType string).
  final dynamic secretVersion;
  /// The Azure Key Vault linked service reference.
  final LinkedServiceReference store;
  /// Type of the secret.
  /// Expected value is 'AzureKeyVaultSecret'.
  final String type;

  /// Creates a new [AzureKeyVaultSecretReference].
  /// [secretName] The name of the secret in Azure Key Vault. Type: string (or Expression with resultType string).
  /// [secretVersion] The version of the secret in Azure Key Vault. The default value is the latest version of the secret. Type: string (or Expression with resultType string).
  /// [store] The Azure Key Vault linked service reference.
  /// [type] Type of the secret.
  AzureKeyVaultSecretReference({
    required this.secretName,
    this.secretVersion,
    required this.store,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'secretVersion': ?secretVersion,
      'store': store.toMap(),
      'type': type,
    };
  }

  factory AzureKeyVaultSecretReference.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultSecretReference(
      secretName: map['secretName'],
      secretVersion: map['secretVersion'] == null ? null : map['secretVersion'],
      store: LinkedServiceReference.fromMap((map['store'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

