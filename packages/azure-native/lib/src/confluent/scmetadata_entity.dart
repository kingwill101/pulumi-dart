// ignore_for_file: unused_element, unnecessary_cast


/// Metadata of the data record
class SCMetadataEntity {
  /// Created Date Time
  final String? createdTimestamp;
  /// Deleted Date time
  final String? deletedTimestamp;
  /// Resource name of the record
  final String? resourceName;
  /// Self lookup url
  final String? self;
  /// Updated Date time
  final String? updatedTimestamp;

  /// Creates a new [SCMetadataEntity].
  /// [createdTimestamp] Created Date Time
  /// [deletedTimestamp] Deleted Date time
  /// [resourceName] Resource name of the record
  /// [self] Self lookup url
  /// [updatedTimestamp] Updated Date time
  SCMetadataEntity({
    this.createdTimestamp,
    this.deletedTimestamp,
    this.resourceName,
    this.self,
    this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTimestamp': ?createdTimestamp,
      'deletedTimestamp': ?deletedTimestamp,
      'resourceName': ?resourceName,
      'self': ?self,
      'updatedTimestamp': ?updatedTimestamp,
    };
  }

  factory SCMetadataEntity.fromMap(Map<String, dynamic> map) {
    return SCMetadataEntity(
      createdTimestamp: map['createdTimestamp'] == null ? null : map['createdTimestamp'] as String,
      deletedTimestamp: map['deletedTimestamp'] == null ? null : map['deletedTimestamp'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      self: map['self'] == null ? null : map['self'] as String,
      updatedTimestamp: map['updatedTimestamp'] == null ? null : map['updatedTimestamp'] as String,
    );
  }
}

