// ignore_for_file: unused_element, unnecessary_cast


/// Metadata of the data record
class MetadataEntityResponse {
  /// Created Date Time
  final String? createdAt;
  /// Deleted Date time
  final String? deletedAt;
  /// Resource name of the record
  final String? resourceName;
  /// Self lookup url
  final String? self;
  /// Updated Date time
  final String? updatedAt;

  /// Creates a new [MetadataEntityResponse].
  /// [createdAt] Created Date Time
  /// [deletedAt] Deleted Date time
  /// [resourceName] Resource name of the record
  /// [self] Self lookup url
  /// [updatedAt] Updated Date time
  MetadataEntityResponse({
    this.createdAt,
    this.deletedAt,
    this.resourceName,
    this.self,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'resourceName': ?resourceName,
      'self': ?self,
      'updatedAt': ?updatedAt,
    };
  }

  factory MetadataEntityResponse.fromMap(Map<String, dynamic> map) {
    return MetadataEntityResponse(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      deletedAt: map['deletedAt'] == null ? null : map['deletedAt'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      self: map['self'] == null ? null : map['self'] as String,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
    );
  }
}

