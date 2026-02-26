// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTracker.
class GetTrackerResult {
  /// Timestamp for when the tracker resource was created in ISO 8601 format.
  final String createTime;

  /// Optional description for the tracker resource.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final String kmsKeyId;

  /// Position filtering method of the tracker resource.
  final String positionFiltering;
  final String region;

  /// Key-value map of resource tags for the tracker.
  final Map<String, String> tags;

  /// ARN for the tracker resource. Used when you need to specify a resource across all AWS.
  final String trackerArn;
  final String trackerName;

  /// Timestamp for when the tracker resource was last updated in ISO 8601 format.
  final String updateTime;

  GetTrackerResult({
    required this.createTime,
    required this.description,
    required this.id,
    required this.kmsKeyId,
    required this.positionFiltering,
    required this.region,
    required this.tags,
    required this.trackerArn,
    required this.trackerName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['id'] = id;
    map['kmsKeyId'] = kmsKeyId;
    map['positionFiltering'] = positionFiltering;
    map['region'] = region;
    map['tags'] = tags;
    map['trackerArn'] = trackerArn;
    map['trackerName'] = trackerName;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTrackerResult.fromMap(Map<String, dynamic> map) {
    return GetTrackerResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      positionFiltering: map['positionFiltering'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      trackerArn: map['trackerArn'] as String,
      trackerName: map['trackerName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
