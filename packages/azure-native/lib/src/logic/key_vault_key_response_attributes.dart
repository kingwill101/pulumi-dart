// ignore_for_file: unused_element, unnecessary_cast


/// The key attributes.
class KeyVaultKeyResponseAttributes {
  /// When the key was created.
  final double? created;
  /// Whether the key is enabled or not.
  final bool? enabled;
  /// When the key was updated.
  final double? updated;

  /// Creates a new [KeyVaultKeyResponseAttributes].
  /// [created] When the key was created.
  /// [enabled] Whether the key is enabled or not.
  /// [updated] When the key was updated.
  KeyVaultKeyResponseAttributes({
    this.created,
    this.enabled,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'enabled': ?enabled,
      'updated': ?updated,
    };
  }

  factory KeyVaultKeyResponseAttributes.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyResponseAttributes(
      created: map['created'] == null ? null : map['created'] as double,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      updated: map['updated'] == null ? null : map['updated'] as double,
    );
  }
}

