// ignore_for_file: unused_element, unnecessary_cast

/// The owner of the object. This will always be the uploader of the object.
class BucketObjectOwnerResponse {
  /// The entity, in the form user-userId.
  final String entity;

  /// The ID for the entity.
  final String entityId;

  /// Creates a new [BucketObjectOwnerResponse].
  /// [entity] The entity, in the form user-userId.
  /// [entityId] The ID for the entity.
  BucketObjectOwnerResponse({
    required this.entity,
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entity'] = entity;
    map['entityId'] = entityId;
    return map;
  }

  factory BucketObjectOwnerResponse.fromMap(Map<String, dynamic> map) {
    return BucketObjectOwnerResponse(
      entity: map['entity'] as String,
      entityId: map['entityId'] as String,
    );
  }
}
