// ignore_for_file: unused_element, unnecessary_cast

class AccessHomeDirectoryMapping {
  /// Represents an entry and a target.
  final String entry;

  /// Represents the map target.
  final String target;

  /// Creates a new [AccessHomeDirectoryMapping].
  /// [entry] Represents an entry and a target.
  /// [target] Represents the map target.
  AccessHomeDirectoryMapping({required this.entry, required this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entry': entry, 'target': target};
  }

  factory AccessHomeDirectoryMapping.fromMap(Map<String, dynamic> map) {
    return AccessHomeDirectoryMapping(
      entry: map['entry'] as String,
      target: map['target'] as String,
    );
  }
}
