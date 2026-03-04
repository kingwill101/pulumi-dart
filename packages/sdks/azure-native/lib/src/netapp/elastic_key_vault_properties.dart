// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of key vault.
class ElasticKeyVaultProperties {
  /// The name of KeyVault key.
  final pulumi.Input<String>? keyName;

  /// The resource ID of KeyVault.
  final pulumi.Input<String>? keyVaultResourceId;

  /// The Uri of KeyVault.
  final pulumi.Input<String>? keyVaultUri;

  /// Creates a new [ElasticKeyVaultProperties].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultResourceId] The resource ID of KeyVault.
  /// [keyVaultUri] The Uri of KeyVault.
  ElasticKeyVaultProperties({
    this.keyName,
    this.keyVaultResourceId,
    this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': ?keyVaultUri,
    };
  }

  factory ElasticKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return ElasticKeyVaultProperties(
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultResourceId: (() {
        final guardedValue = map['keyVaultResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultUri: (() {
        final guardedValue = map['keyVaultUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
