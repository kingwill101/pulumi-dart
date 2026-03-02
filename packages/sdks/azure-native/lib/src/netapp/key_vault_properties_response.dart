// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of key vault.
class KeyVaultPropertiesResponse {
  /// The name of KeyVault key.
  final pulumi.Input<String> keyName;
  /// UUID v4 used to identify the Azure Key Vault configuration
  final pulumi.Input<String> keyVaultId;
  /// The resource ID of KeyVault.
  final pulumi.Input<String>? keyVaultResourceId;
  /// The Uri of KeyVault.
  final pulumi.Input<String> keyVaultUri;
  /// Status of the KeyVault connection.
  final pulumi.Input<String> status;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultId] UUID v4 used to identify the Azure Key Vault configuration
  /// [keyVaultResourceId] The resource ID of KeyVault.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [status] Status of the KeyVault connection.
  KeyVaultPropertiesResponse({
    required this.keyName,
    required this.keyVaultId,
    this.keyVaultResourceId,
    required this.keyVaultUri,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultId': keyVaultId,
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': keyVaultUri,
      'status': status,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyName: (map['keyName'] as String).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      keyVaultResourceId: map['keyVaultResourceId'] == null ? null : (map['keyVaultResourceId']! as String).input(),
      keyVaultUri: (map['keyVaultUri'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

