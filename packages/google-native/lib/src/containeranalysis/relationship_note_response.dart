// ignore_for_file: unused_element, unnecessary_cast

/// RelationshipNote represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipNoteResponse {
  /// The type of relationship between the source and target SPDX elements
  final String type;

  /// Creates a new [RelationshipNoteResponse].
  /// [type] The type of relationship between the source and target SPDX elements
  RelationshipNoteResponse({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory RelationshipNoteResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipNoteResponse(type: map['type'] as String);
  }
}
