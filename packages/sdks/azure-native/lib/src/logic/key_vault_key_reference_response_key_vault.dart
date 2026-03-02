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
  KeyVaultKeyReferenceResponseKeyVault({
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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

