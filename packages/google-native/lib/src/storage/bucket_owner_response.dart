// ignore_for_file: unused_element, unnecessary_cast


/// The owner of the bucket. This is always the project team's owner group.
class BucketOwnerResponse {
  /// The entity, in the form project-owner-projectId.
  final String entity;
  /// The ID for the entity.
  final String entityId;

  /// Creates a new [BucketOwnerResponse].
  /// [entity] The entity, in the form project-owner-projectId.
  /// [entityId] The ID for the entity.
  BucketOwnerResponse({
    required this.entity,
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': entity,
      'entityId': entityId,
    };
  }

  factory BucketOwnerResponse.fromMap(Map<String, dynamic> map) {
    return BucketOwnerResponse(
      entity: map['entity'] as String,
      entityId: map['entityId'] as String,
    );
  }
}

