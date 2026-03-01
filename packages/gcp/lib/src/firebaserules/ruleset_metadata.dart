// ignore_for_file: unused_element, unnecessary_cast

class RulesetMetadata {
  /// Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  final List<String>? services;

  /// Creates a new [RulesetMetadata].
  /// [services] Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  RulesetMetadata({this.services});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'services': ?services};
  }

  factory RulesetMetadata.fromMap(Map<String, dynamic> map) {
    return RulesetMetadata(
      services: map['services'] == null
          ? null
          : (map['services'] as List).cast<String>(),
    );
  }
}
