// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrackerAssociation.
class GetTrackerAssociationResult {
  final String? consumerArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? trackerName;

  /// Creates a new [GetTrackerAssociationResult].
  /// [consumerArn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [trackerName] Optional.
  const GetTrackerAssociationResult({
    this.consumerArn,
    this.id,
    this.region,
    this.trackerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerArn': ?consumerArn,
      'id': ?id,
      'region': ?region,
      'trackerName': ?trackerName,
    };
  }

  factory GetTrackerAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetTrackerAssociationResult(
      consumerArn: (() { final guardedValue = map['consumerArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trackerName: (() { final guardedValue = map['trackerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
