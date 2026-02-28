// ignore_for_file: unused_element, unnecessary_cast


/// Relationship between Entities.
class GoogleCloudDocumentaiV1DocumentEntityRelationResponse {
  /// Object entity id.
  final String objectId;
  /// Relationship description.
  final String relation;
  /// Subject entity id.
  final String subjectId;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentEntityRelationResponse].
  /// [objectId] Object entity id.
  /// [relation] Relationship description.
  /// [subjectId] Subject entity id.
  GoogleCloudDocumentaiV1DocumentEntityRelationResponse({
    required this.objectId,
    required this.relation,
    required this.subjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
      'relation': relation,
      'subjectId': subjectId,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentEntityRelationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityRelationResponse(
      objectId: map['objectId'] as String,
      relation: map['relation'] as String,
      subjectId: map['subjectId'] as String,
    );
  }
}

