// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGeofenceCollection.
class GetGeofenceCollectionResult {
  /// ARN for the geofence collection resource. Used when you need to specify a resource across all AWS.
  final String collectionArn;
  final String collectionName;
  /// Timestamp for when the geofence collection resource was created in ISO 8601 format.
  final String createTime;
  /// Optional description of the geofence collection resource.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final String kmsKeyId;
  final String region;
  /// Key-value map of resource tags for the geofence collection.
  final Map<String, String> tags;
  /// Timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  final String updateTime;

  /// Creates a new [GetGeofenceCollectionResult].
  /// [collectionArn] ARN for the geofence collection resource. Used when you need to specify a resource across all AWS.
  /// [collectionName] Required.
  /// [createTime] Timestamp for when the geofence collection resource was created in ISO 8601 format.
  /// [description] Optional description of the geofence collection resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  /// [region] Required.
  /// [tags] Key-value map of resource tags for the geofence collection.
  /// [updateTime] Timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  const GetGeofenceCollectionResult({
    required this.collectionArn,
    required this.collectionName,
    required this.createTime,
    required this.description,
    required this.id,
    required this.kmsKeyId,
    required this.region,
    required this.tags,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionArn': collectionArn,
      'collectionName': collectionName,
      'createTime': createTime,
      'description': description,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'region': region,
      'tags': tags,
      'updateTime': updateTime,
    };
  }

  factory GetGeofenceCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetGeofenceCollectionResult(
      collectionArn: map['collectionArn'] as String,
      collectionName: map['collectionName'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
