// ignore_for_file: unused_element, unnecessary_cast

import 'replica_info_type.dart';

class ReplicaInfo {
  /// If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.
  final bool? defaultLeaderLocation;

  /// The location of the serving resources, e.g. "us-central1".
  final String? location;

  /// The type of replica.
  final ReplicaInfoType? type;

  ReplicaInfo({
    this.defaultLeaderLocation,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultLeaderLocationValue = defaultLeaderLocation;
    if (defaultLeaderLocationValue != null) {
      map['defaultLeaderLocation'] = defaultLeaderLocationValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory ReplicaInfo.fromMap(Map<String, dynamic> map) {
    return ReplicaInfo(
      defaultLeaderLocation: map['defaultLeaderLocation'] == null
          ? null
          : map['defaultLeaderLocation'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      type: map['type'] == null
          ? null
          : ReplicaInfoType.fromValue(map['type'] as String),
    );
  }
}
