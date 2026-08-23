// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of key vault.
class ElasticKeyVaultPropertiesResponse {
  /// The name of KeyVault key.
  final pulumi.Input<String>? keyName;
  /// The resource ID of KeyVault.
  final pulumi.Input<String>? keyVaultResourceId;
  /// The Uri of KeyVault.
  final pulumi.Input<String>? keyVaultUri;
  /// Status of the KeyVault connection.
  final pulumi.Input<String> status;

  /// Creates a new [ElasticKeyVaultPropertiesResponse].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultResourceId] The resource ID of KeyVault.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [status] Status of the KeyVault connection.
  const ElasticKeyVaultPropertiesResponse({
    this.keyName,
    this.keyVaultResourceId,
    this.keyVaultUri,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': ?keyVaultUri,
      'status': status,
    };
  }

  factory ElasticKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticKeyVaultPropertiesResponse(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultResourceId: (() { final guardedValue = map['keyVaultResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
