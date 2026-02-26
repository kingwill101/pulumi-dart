// ignore_for_file: unused_element, unnecessary_cast

class AccessHomeDirectoryMapping {
  /// Represents an entry and a target.
  final String entry;

  /// Represents the map target.
  final String target;

  AccessHomeDirectoryMapping({
    required this.entry,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entry'] = entry;
    map['target'] = target;
    return map;
  }

  factory AccessHomeDirectoryMapping.fromMap(Map<String, dynamic> map) {
    return AccessHomeDirectoryMapping(
      entry: map['entry'] as String,
      target: map['target'] as String,
    );
  }
}
