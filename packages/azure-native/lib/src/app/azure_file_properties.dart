// ignore_for_file: unused_element, unnecessary_cast

import 'secret_key_vault_properties.dart';

/// Azure File Properties.
class AzureFileProperties {
  /// Access mode for storage
  final String? accessMode;
  /// Storage account key for azure file.
  final String? accountKey;
  /// Storage account key stored as an Azure Key Vault secret.
  final SecretKeyVaultProperties? accountKeyVaultProperties;
  /// Storage account name for azure file.
  final String? accountName;
  /// Azure file share name.
  final String? shareName;

  /// Creates a new [AzureFileProperties].
  /// [accessMode] Access mode for storage
  /// [accountKey] Storage account key for azure file.
  /// [accountKeyVaultProperties] Storage account key stored as an Azure Key Vault secret.
  /// [accountName] Storage account name for azure file.
  /// [shareName] Azure file share name.
  AzureFileProperties({
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

  factory AzureFileProperties.fromMap(Map<String, dynamic> map) {
    return AzureFileProperties(
      accessMode: map['accessMode'] == null ? null : map['accessMode'] as String,
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountKeyVaultProperties: map['accountKeyVaultProperties'] == null ? null : SecretKeyVaultProperties.fromMap((map['accountKeyVaultProperties'] as Map).cast<String, dynamic>()),
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      shareName: map['shareName'] == null ? null : map['shareName'] as String,
    );
  }
}

