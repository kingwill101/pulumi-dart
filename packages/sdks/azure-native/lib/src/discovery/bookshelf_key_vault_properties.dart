// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key Vault Properties with clientId selection
class BookshelfKeyVaultProperties {
  /// The client ID of the identity to use for accessing the Key Vault. Must be a workload identity assigned to the Bookshelf resource.
  final pulumi.Input<String> identityClientId;
  /// The Key Name in Key Vault
  final pulumi.Input<String> keyName;
  /// The Key Vault URI
  final pulumi.Input<String> keyVaultUri;
  /// The Key Version in Key Vault
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [BookshelfKeyVaultProperties].
  /// [identityClientId] The client ID of the identity to use for accessing the Key Vault. Must be a workload identity assigned to the Bookshelf resource.
  /// [keyName] The Key Name in Key Vault
  /// [keyVaultUri] The Key Vault URI
  /// [keyVersion] The Key Version in Key Vault
  const BookshelfKeyVaultProperties({
    required this.identityClientId,
    required this.keyName,
    required this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': identityClientId,
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory BookshelfKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return BookshelfKeyVaultProperties(
      identityClientId: pulumi.Input.fromValue(map['identityClientId'] as String),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
