// ignore_for_file: unused_element, unnecessary_cast

class InstanceConfigReplica {
  /// If true, this location is designated as the default leader location where
  /// leader replicas are placed.
  final bool? defaultLeaderLocation;

  /// The location of the serving resources, e.g. "us-central1".
  final String? location;

  /// Indicates the type of replica.  See the [replica types
  /// documentation](https://cloud.google.com/spanner/docs/replication#replica_types)
  /// for more details.
  /// Possible values are: `READ_WRITE`, `READ_ONLY`, `WITNESS`.
  final String? type;

  /// Creates a new [InstanceConfigReplica].
  /// [defaultLeaderLocation] If true, this location is designated as the default leader location where
  /// [location] The location of the serving resources, e.g. "us-central1".
  /// [type] Indicates the type of replica.  See the [replica types
  InstanceConfigReplica({this.defaultLeaderLocation, this.location, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLeaderLocation': ?defaultLeaderLocation,
      'location': ?location,
      'type': ?type,
    };
  }

  factory InstanceConfigReplica.fromMap(Map<String, dynamic> map) {
    return InstanceConfigReplica(
      defaultLeaderLocation: map['defaultLeaderLocation'] == null
          ? null
          : map['defaultLeaderLocation'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
