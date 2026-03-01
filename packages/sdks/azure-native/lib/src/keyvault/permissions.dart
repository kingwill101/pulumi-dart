// ignore_for_file: unused_element, unnecessary_cast


/// Permissions the identity has for keys, secrets, certificates and storage.
class Permissions {
  /// Permissions to certificates
  final List<String>? certificates;
  /// Permissions to keys
  final List<String>? keys;
  /// Permissions to secrets
  final List<String>? secrets;
  /// Permissions to storage accounts
  final List<String>? storage;

  /// Creates a new [Permissions].
  /// [certificates] Permissions to certificates
  /// [keys] Permissions to keys
  /// [secrets] Permissions to secrets
  /// [storage] Permissions to storage accounts
  Permissions({
    this.certificates,
    this.keys,
    this.secrets,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
      'keys': ?keys,
      'secrets': ?secrets,
      'storage': ?storage,
    };
  }

  factory Permissions.fromMap(Map<String, dynamic> map) {
    return Permissions(
      certificates: map['certificates'] == null ? null : (map['certificates'] as List).cast<String>(),
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
      secrets: map['secrets'] == null ? null : (map['secrets'] as List).cast<String>(),
      storage: map['storage'] == null ? null : (map['storage'] as List).cast<String>(),
    );
  }
}

