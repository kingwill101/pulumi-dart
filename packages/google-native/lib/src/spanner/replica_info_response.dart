// ignore_for_file: unused_element, unnecessary_cast

class ReplicaInfoResponse {
  /// If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  final bool defaultLeaderLocation;

  /// The location of the serving resources, e.g. "us-central1".
  final String location;

  /// The type of replica.
  final String type;

  /// Creates a new [ReplicaInfoResponse].
  /// [defaultLeaderLocation] If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  /// [location] The location of the serving resources, e.g. "us-central1".
  /// [type] The type of replica.
  ReplicaInfoResponse({
    required this.defaultLeaderLocation,
    required this.location,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLeaderLocation': defaultLeaderLocation,
      'location': location,
      'type': type,
    };
  }

  factory ReplicaInfoResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaInfoResponse(
      defaultLeaderLocation: map['defaultLeaderLocation'] as bool,
      location: map['location'] as String,
      type: map['type'] as String,
    );
  }
}
