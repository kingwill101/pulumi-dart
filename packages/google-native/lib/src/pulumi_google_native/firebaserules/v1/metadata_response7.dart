// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a Ruleset.
class MetadataResponse7 {
  /// Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  final List<String> services;

  MetadataResponse7({
    required this.services,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['services'] = services;
    return map;
  }

  factory MetadataResponse7.fromMap(Map<String, dynamic> map) {
    return MetadataResponse7(
      services: (map['services'] as List).cast<String>(),
    );
  }
}
