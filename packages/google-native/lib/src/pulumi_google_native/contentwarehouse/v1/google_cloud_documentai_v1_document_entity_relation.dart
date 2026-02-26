// ignore_for_file: unused_element, unnecessary_cast

/// Relationship between Entities.
class GoogleCloudDocumentaiV1DocumentEntityRelation {
  /// Object entity id.
  final String? objectId;

  /// Relationship description.
  final String? relation;

  /// Subject entity id.
  final String? subjectId;

  GoogleCloudDocumentaiV1DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final objectIdValue = objectId;
    if (objectIdValue != null) {
      map['objectId'] = objectIdValue;
    }
    final relationValue = relation;
    if (relationValue != null) {
      map['relation'] = relationValue;
    }
    final subjectIdValue = subjectId;
    if (subjectIdValue != null) {
      map['subjectId'] = subjectIdValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentEntityRelation.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentEntityRelation(
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      relation: map['relation'] == null ? null : map['relation'] as String,
      subjectId: map['subjectId'] == null ? null : map['subjectId'] as String,
    );
  }
}
