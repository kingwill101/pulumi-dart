// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyVault secret object properties
class KeyVaultSecretObject {
  /// KeyVault secret name.
  final pulumi.Input<String> name;

  /// KeyVault secret version.
  final pulumi.Input<String>? version;

  /// Creates a new [KeyVaultSecretObject].
  /// [name] KeyVault secret name.
  /// [version] KeyVault secret version.
  KeyVaultSecretObject({required this.name, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'version': ?version};
  }

  factory KeyVaultSecretObject.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretObject(
      name: pulumi.Input.fromValue(map['name'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
