// ignore_for_file: unused_element, unnecessary_cast

import 'secret_key_vault_properties_response.dart';

/// Azure File Properties.
class AzureFilePropertiesResponse {
  /// Access mode for storage
  final String? accessMode;
  /// Storage account key for azure file.
  final String? accountKey;
  /// Storage account key stored as an Azure Key Vault secret.
  final SecretKeyVaultPropertiesResponse? accountKeyVaultProperties;
  /// Storage account name for azure file.
  final String? accountName;
  /// Azure file share name.
  final String? shareName;

  /// Creates a new [AzureFilePropertiesResponse].
  /// [accessMode] Access mode for storage
  /// [accountKey] Storage account key for azure file.
  /// [accountKeyVaultProperties] Storage account key stored as an Azure Key Vault secret.
  /// [accountName] Storage account name for azure file.
  /// [shareName] Azure file share name.
  AzureFilePropertiesResponse({
    this.accessMode,
    this.accountKey,
    this.accountKeyVaultProperties,
    this.accountName,
    this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'accountKey': ?accountKey,
      'accountKeyVaultProperties': ?accountKeyVaultProperties == null ? null : accountKeyVaultProperties!.toMap(),
      'accountName': ?accountName,
      'shareName': ?shareName,
    };
  }

  factory AzureFilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureFilePropertiesResponse(
      accessMode: map['accessMode'] == null ? null : map['accessMode'] as String,
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountKeyVaultProperties: map['accountKeyVaultProperties'] == null ? null : SecretKeyVaultPropertiesResponse.fromMap((map['accountKeyVaultProperties'] as Map).cast<String, dynamic>()),
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      shareName: map['shareName'] == null ? null : map['shareName'] as String,
    );
  }
}

