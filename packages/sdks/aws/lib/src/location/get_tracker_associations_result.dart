// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrackerAssociations.
class GetTrackerAssociationsResult {
  /// List of geofence collection ARNs associated to the tracker resource.
  final List<String>? consumerArns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? trackerName;

  /// Creates a new [GetTrackerAssociationsResult].
  /// [consumerArns] List of geofence collection ARNs associated to the tracker resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [trackerName] Optional.
  const GetTrackerAssociationsResult({
    this.consumerArns,
    this.id,
    this.region,
    this.trackerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerArns': ?consumerArns,
      'id': ?id,
      'region': ?region,
      'trackerName': ?trackerName,
    };
  }

  factory GetTrackerAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetTrackerAssociationsResult(
      consumerArns: (() { final guardedValue = map['consumerArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trackerName: (() { final guardedValue = map['trackerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
