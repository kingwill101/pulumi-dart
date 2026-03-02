// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_key_vault_properties_response.dart';

/// Azure File Properties.
class AzureFilePropertiesResponse {
  /// Access mode for storage
  final pulumi.Input<String>? accessMode;
  /// Storage account key for azure file.
  final pulumi.Input<String>? accountKey;
  /// Storage account key stored as an Azure Key Vault secret.
  final pulumi.Input<SecretKeyVaultPropertiesResponse>? accountKeyVaultProperties;
  /// Storage account name for azure file.
  final pulumi.Input<String>? accountName;
  /// Azure file share name.
  final pulumi.Input<String>? shareName;

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
      'accountKeyVaultProperties': ?pulumi.Input.mapOptionalInputValue<SecretKeyVaultPropertiesResponse, Map<String, dynamic>>(accountKeyVaultProperties, (value) => value.toMap()),
      'accountName': ?accountName,
      'shareName': ?shareName,
    };
  }

  factory AzureFilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureFilePropertiesResponse(
      accessMode: map['accessMode'] == null ? null : (map['accessMode'] as String).input(),
      accountKey: map['accountKey'] == null ? null : (map['accountKey'] as String).input(),
      accountKeyVaultProperties: map['accountKeyVaultProperties'] == null ? null : (SecretKeyVaultPropertiesResponse.fromMap((map['accountKeyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName'] as String).input(),
    );
  }
}

