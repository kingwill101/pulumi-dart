// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The key vault reference.
class KeyVaultReference {
  /// The resource id.
  final pulumi.Input<String>? id;
  /// The key vault name.
  final pulumi.Input<String>? name;

  /// Creates a new [KeyVaultReference].
  /// [id] The resource id.
  /// [name] The key vault name.
  KeyVaultReference({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory KeyVaultReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultReference(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

