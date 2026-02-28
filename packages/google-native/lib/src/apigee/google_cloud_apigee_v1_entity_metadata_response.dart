// ignore_for_file: unused_element, unnecessary_cast

/// Metadata common to many entities in this API.
class GoogleCloudApigeeV1EntityMetadataResponse {
  /// Time at which the API proxy was created, in milliseconds since epoch.
  final String createdAt;

  /// Time at which the API proxy was most recently modified, in milliseconds since epoch.
  final String lastModifiedAt;

  /// The type of entity described
  final String subType;

  /// Creates a new [GoogleCloudApigeeV1EntityMetadataResponse].
  /// [createdAt] Time at which the API proxy was created, in milliseconds since epoch.
  /// [lastModifiedAt] Time at which the API proxy was most recently modified, in milliseconds since epoch.
  /// [subType] The type of entity described
  GoogleCloudApigeeV1EntityMetadataResponse({
    required this.createdAt,
    required this.lastModifiedAt,
    required this.subType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createdAt'] = createdAt;
    map['lastModifiedAt'] = lastModifiedAt;
    map['subType'] = subType;
    return map;
  }

  factory GoogleCloudApigeeV1EntityMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1EntityMetadataResponse(
      createdAt: map['createdAt'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      subType: map['subType'] as String,
    );
  }
}
