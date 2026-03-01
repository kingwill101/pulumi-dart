// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKeystore.
class GetKeystoreResult {
  /// Aliases in this keystore.
  final List<String> aliases;

  /// Resource ID for this keystore. Values must match the regular expression `[\w[:space:].-]{1,255}`.
  final String name;

  /// Creates a new [GetKeystoreResult].
  /// [aliases] Aliases in this keystore.
  /// [name] Resource ID for this keystore. Values must match the regular expression `[\w[:space:].-]{1,255}`.
  GetKeystoreResult({required this.aliases, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'aliases': aliases, 'name': name};
  }

  factory GetKeystoreResult.fromMap(Map<String, dynamic> map) {
    return GetKeystoreResult(
      aliases: (map['aliases'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}
