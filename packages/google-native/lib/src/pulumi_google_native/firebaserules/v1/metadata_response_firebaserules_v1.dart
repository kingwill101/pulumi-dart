// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a Ruleset.
class MetadataResponseFirebaserulesV1 {
  /// Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  final List<String> services;

  MetadataResponseFirebaserulesV1({
    required this.services,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['services'] = services;
    return map;
  }

  factory MetadataResponseFirebaserulesV1.fromMap(Map<String, dynamic> map) {
    return MetadataResponseFirebaserulesV1(
      services: (map['services'] as List).cast<String>(),
    );
  }
}
