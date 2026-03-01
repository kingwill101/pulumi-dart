// ignore_for_file: unused_element, unnecessary_cast


/// Property/Properties which represent a unique ID.
class StrongIdResponse {
  /// Localized descriptions.
  final Map<String, String>? description;
  /// Localized display name.
  final Map<String, String>? displayName;
  /// The properties which make up the unique ID.
  final List<String> keyPropertyNames;
  /// The Name identifying the strong ID.
  final String strongIdName;

  /// Creates a new [StrongIdResponse].
  /// [description] Localized descriptions.
  /// [displayName] Localized display name.
  /// [keyPropertyNames] The properties which make up the unique ID.
  /// [strongIdName] The Name identifying the strong ID.
  StrongIdResponse({
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

  factory StrongIdResponse.fromMap(Map<String, dynamic> map) {
    return StrongIdResponse(
      description: map['description'] == null ? null : (map['description'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as Map).cast<String, String>(),
      keyPropertyNames: (map['keyPropertyNames'] as List).cast<String>(),
      strongIdName: map['strongIdName'] as String,
    );
  }
}

