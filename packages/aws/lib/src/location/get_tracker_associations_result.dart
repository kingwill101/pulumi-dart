// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTrackerAssociations.
class GetTrackerAssociationsResult {
  /// List of geofence collection ARNs associated to the tracker resource.
  final List<String> consumerArns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String trackerName;

  /// Creates a new [GetTrackerAssociationsResult].
  /// [consumerArns] List of geofence collection ARNs associated to the tracker resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [trackerName] Required.
  GetTrackerAssociationsResult({
    required this.consumerArns,
    required this.id,
    required this.region,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerArns'] = consumerArns;
    map['id'] = id;
    map['region'] = region;
    map['trackerName'] = trackerName;
    return map;
  }

  factory GetTrackerAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetTrackerAssociationsResult(
      consumerArns: (map['consumerArns'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      trackerName: map['trackerName'] as String,
    );
  }
}
