// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The key vault reference.
class KeyVaultKeyReferenceKeyVault {
  /// The resource id.
  final pulumi.Input<String?>? id;

  /// Creates a new [KeyVaultKeyReferenceKeyVault].
  /// [id] The resource id.
  const KeyVaultKeyReferenceKeyVault({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KeyVaultKeyReferenceKeyVault.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceKeyVault(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
