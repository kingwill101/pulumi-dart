// ignore_for_file: unused_element, unnecessary_cast


/// The owner of the object. This will always be the uploader of the object.
class BucketObjectOwner {
  /// The entity, in the form user-userId.
  final String? entity;
  /// The ID for the entity.
  final String? entityId;

  /// Creates a new [BucketObjectOwner].
  /// [entity] The entity, in the form user-userId.
  /// [entityId] The ID for the entity.
  BucketObjectOwner({
    this.entity,
    this.entityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': ?entity,
      'entityId': ?entityId,
    };
  }

  factory BucketObjectOwner.fromMap(Map<String, dynamic> map) {
    return BucketObjectOwner(
      entity: map['entity'] == null ? null : map['entity'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
    );
  }
}

