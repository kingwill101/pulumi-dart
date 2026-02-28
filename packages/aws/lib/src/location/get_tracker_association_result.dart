// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrackerAssociation.
class GetTrackerAssociationResult {
  final String consumerArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String trackerName;

  /// Creates a new [GetTrackerAssociationResult].
  /// [consumerArn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [trackerName] Required.
  GetTrackerAssociationResult({
    required this.consumerArn,
    required this.id,
    required this.region,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerArn': consumerArn,
      'id': id,
      'region': region,
      'trackerName': trackerName,
    };
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

