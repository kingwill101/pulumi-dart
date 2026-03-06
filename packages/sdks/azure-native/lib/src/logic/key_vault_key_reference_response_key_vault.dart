// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The key vault reference.
class KeyVaultKeyReferenceResponseKeyVault {
  /// The resource id.
  final pulumi.Input<String>? id;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [KeyVaultKeyReferenceResponseKeyVault].
  /// [id] The resource id.
  /// [name] The resource name.
  /// [type] The resource type.
  const KeyVaultKeyReferenceResponseKeyVault({
    this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'type': type,
    };
  }

  factory KeyVaultKeyReferenceResponseKeyVault.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceResponseKeyVault(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

