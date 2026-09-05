// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGeofenceCollection.
class GetGeofenceCollectionResult {
  /// ARN for the geofence collection resource. Used when you need to specify a resource across all AWS.
  final String? collectionArn;
  final String? collectionName;
  /// Timestamp for when the geofence collection resource was created in ISO 8601 format.
  final String? createTime;
  /// Optional description of the geofence collection resource.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final String? kmsKeyId;
  final String? region;
  /// Key-value map of resource tags for the geofence collection.
  final Map<String, String>? tags;
  /// Timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  final String? updateTime;

  /// Creates a new [GetGeofenceCollectionResult].
  /// [collectionArn] ARN for the geofence collection resource. Used when you need to specify a resource across all AWS.
  /// [collectionName] Optional.
  /// [createTime] Timestamp for when the geofence collection resource was created in ISO 8601 format.
  /// [description] Optional description of the geofence collection resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags for the geofence collection.
  /// [updateTime] Timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  const GetGeofenceCollectionResult({
    this.collectionArn,
    this.collectionName,
    this.createTime,
    this.description,
    this.id,
    this.kmsKeyId,
    this.region,
    this.tags,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionArn': ?collectionArn,
      'collectionName': ?collectionName,
      'createTime': ?createTime,
      'description': ?description,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'tags': ?tags,
      'updateTime': ?updateTime,
    };
  }

  factory GetGeofenceCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetGeofenceCollectionResult(
      collectionArn: (() { final guardedValue = map['collectionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collectionName: (() { final guardedValue = map['collectionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
