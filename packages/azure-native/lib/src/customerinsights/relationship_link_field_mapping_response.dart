// ignore_for_file: unused_element, unnecessary_cast


/// The fields mapping for Relationships.
class RelationshipLinkFieldMappingResponse {
  /// The field name on the Interaction Type.
  final String interactionFieldName;
  /// Link type.
  final String? linkType;
  /// The field name on the Relationship metadata.
  final String relationshipFieldName;

  /// Creates a new [RelationshipLinkFieldMappingResponse].
  /// [interactionFieldName] The field name on the Interaction Type.
  /// [linkType] Link type.
  /// [relationshipFieldName] The field name on the Relationship metadata.
  RelationshipLinkFieldMappingResponse({
    required this.interactionFieldName,
    this.linkType,
    required this.relationshipFieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactionFieldName': interactionFieldName,
      'linkType': ?linkType,
      'relationshipFieldName': relationshipFieldName,
    };
  }

  factory RelationshipLinkFieldMappingResponse.fromMap(Map<String, dynamic> map) {
    return RelationshipLinkFieldMappingResponse(
      interactionFieldName: map['interactionFieldName'] as String,
      linkType: map['linkType'] == null ? null : map['linkType'] as String,
      relationshipFieldName: map['relationshipFieldName'] as String,
    );
  }
}

