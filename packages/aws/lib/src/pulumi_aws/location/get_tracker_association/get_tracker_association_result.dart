// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTrackerAssociation.
class GetTrackerAssociationResult {
  final String consumerArn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String trackerName;

  GetTrackerAssociationResult({
    required this.consumerArn,
    required this.id,
    required this.region,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerArn'] = consumerArn;
    map['id'] = id;
    map['region'] = region;
    map['trackerName'] = trackerName;
    return map;
  }

  factory GetTrackerAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetTrackerAssociationResult(
      consumerArn: map['consumerArn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      trackerName: map['trackerName'] as String,
    );
  }
}
