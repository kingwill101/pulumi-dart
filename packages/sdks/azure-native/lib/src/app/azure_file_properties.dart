// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_key_vault_properties.dart';

/// Azure File Properties.
class AzureFileProperties {
  /// Access mode for storage
  final pulumi.Input<String>? accessMode;
  /// Storage account key for azure file.
  final pulumi.Input<String>? accountKey;
  /// Storage account key stored as an Azure Key Vault secret.
  final pulumi.Input<SecretKeyVaultProperties>? accountKeyVaultProperties;
  /// Storage account name for azure file.
  final pulumi.Input<String>? accountName;
  /// Azure file share name.
  final pulumi.Input<String>? shareName;

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
      'accountKeyVaultProperties': ?pulumi.Input.mapOptionalInputValue<SecretKeyVaultProperties, Map<String, dynamic>>(accountKeyVaultProperties, (value) => value.toMap()),
      'accountName': ?accountName,
      'shareName': ?shareName,
    };
  }

  factory AzureFileProperties.fromMap(Map<String, dynamic> map) {
    return AzureFileProperties(
      accessMode: map['accessMode'] == null ? null : (map['accessMode'] as String).input(),
      accountKey: map['accountKey'] == null ? null : (map['accountKey'] as String).input(),
      accountKeyVaultProperties: map['accountKeyVaultProperties'] == null ? null : (SecretKeyVaultProperties.fromMap((map['accountKeyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName'] as String).input(),
    );
  }
}

