// ignore_for_file: unused_element, unnecessary_cast


class RecordGeoproximityRoutingPolicyCoordinate {
  final String latitude;
  final String longitude;

  /// Creates a new [RecordGeoproximityRoutingPolicyCoordinate].
  /// [latitude] Required.
  /// [longitude] Required.
  RecordGeoproximityRoutingPolicyCoordinate({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory RecordGeoproximityRoutingPolicyCoordinate.fromMap(Map<String, dynamic> map) {
    return RecordGeoproximityRoutingPolicyCoordinate(
      latitude: map['latitude'] as String,
      longitude: map['longitude'] as String,
    );
  }
}

