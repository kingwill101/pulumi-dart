// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTracker.
class GetTrackerResult {
  /// Timestamp for when the tracker resource was created in ISO 8601 format.
  final String? createTime;
  /// Optional description for the tracker resource.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final String? kmsKeyId;
  /// Position filtering method of the tracker resource.
  final String? positionFiltering;
  final String? region;
  /// Key-value map of resource tags for the tracker.
  final Map<String, String>? tags;
  /// ARN for the tracker resource. Used when you need to specify a resource across all AWS.
  final String? trackerArn;
  final String? trackerName;
  /// Timestamp for when the tracker resource was last updated in ISO 8601 format.
  final String? updateTime;

  /// Creates a new [GetTrackerResult].
  /// [createTime] Timestamp for when the tracker resource was created in ISO 8601 format.
  /// [description] Optional description for the tracker resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  /// [positionFiltering] Position filtering method of the tracker resource.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags for the tracker.
  /// [trackerArn] ARN for the tracker resource. Used when you need to specify a resource across all AWS.
  /// [trackerName] Optional.
  /// [updateTime] Timestamp for when the tracker resource was last updated in ISO 8601 format.
  const GetTrackerResult({
    this.createTime,
    this.description,
    this.id,
    this.kmsKeyId,
    this.positionFiltering,
    this.region,
    this.tags,
    this.trackerArn,
    this.trackerName,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'positionFiltering': ?positionFiltering,
      'region': ?region,
      'tags': ?tags,
      'trackerArn': ?trackerArn,
      'trackerName': ?trackerName,
      'updateTime': ?updateTime,
    };
  }

  factory GetTrackerResult.fromMap(Map<String, dynamic> map) {
    return GetTrackerResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      positionFiltering: (() { final guardedValue = map['positionFiltering']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trackerArn: (() { final guardedValue = map['trackerArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trackerName: (() { final guardedValue = map['trackerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
