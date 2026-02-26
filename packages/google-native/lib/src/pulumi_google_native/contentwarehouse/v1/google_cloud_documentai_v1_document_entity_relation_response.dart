// ignore_for_file: unused_element, unnecessary_cast

/// Relationship between Entities.
class GoogleCloudDocumentaiV1DocumentEntityRelationResponse {
  /// Object entity id.
  final String objectId;

  /// Relationship description.
  final String relation;

  /// Subject entity id.
  final String subjectId;

  GoogleCloudDocumentaiV1DocumentEntityRelationResponse({
    required this.objectId,
    required this.relation,
    required this.subjectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectId'] = objectId;
    map['relation'] = relation;
    map['subjectId'] = subjectId;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentEntityRelationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityRelationResponse(
      objectId: map['objectId'] as String,
      relation: map['relation'] as String,
      subjectId: map['subjectId'] as String,
    );
  }
}
