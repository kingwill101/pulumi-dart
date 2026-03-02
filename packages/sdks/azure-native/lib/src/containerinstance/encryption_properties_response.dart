// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container group encryption properties.
class EncryptionPropertiesResponse {
  /// The keyvault managed identity.
  final pulumi.Input<String>? identity;
  /// The encryption key name.
  final pulumi.Input<String> keyName;
  /// The encryption key version.
  final pulumi.Input<String> keyVersion;
  /// The keyvault base url.
  final pulumi.Input<String> vaultBaseUrl;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [identity] The keyvault managed identity.
  /// [keyName] The encryption key name.
  /// [keyVersion] The encryption key version.
  /// [vaultBaseUrl] The keyvault base url.
  EncryptionPropertiesResponse({
    this.identity,
    required this.keyName,
    required this.keyVersion,
    required this.vaultBaseUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyName': keyName,
      'keyVersion': keyVersion,
      'vaultBaseUrl': vaultBaseUrl,
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      keyName: (map['keyName'] as String).input(),
      keyVersion: (map['keyVersion'] as String).input(),
      vaultBaseUrl: (map['vaultBaseUrl'] as String).input(),
    );
  }
}

