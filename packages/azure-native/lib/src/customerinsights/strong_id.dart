// ignore_for_file: unused_element, unnecessary_cast


/// Property/Properties which represent a unique ID.
class StrongId {
  /// Localized descriptions.
  final Map<String, String>? description;
  /// Localized display name.
  final Map<String, String>? displayName;
  /// The properties which make up the unique ID.
  final List<String> keyPropertyNames;
  /// The Name identifying the strong ID.
  final String strongIdName;

  /// Creates a new [StrongId].
  /// [description] Localized descriptions.
  /// [displayName] Localized display name.
  /// [keyPropertyNames] The properties which make up the unique ID.
  /// [strongIdName] The Name identifying the strong ID.
  StrongId({
    this.description,
    this.displayName,
    required this.keyPropertyNames,
    required this.strongIdName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'keyPropertyNames': keyPropertyNames,
      'strongIdName': strongIdName,
    };
  }

  factory StrongId.fromMap(Map<String, dynamic> map) {
    return StrongId(
      description: map['description'] == null ? null : (map['description'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as Map).cast<String, String>(),
      keyPropertyNames: (map['keyPropertyNames'] as List).cast<String>(),
      strongIdName: map['strongIdName'] as String,
    );
  }
}

