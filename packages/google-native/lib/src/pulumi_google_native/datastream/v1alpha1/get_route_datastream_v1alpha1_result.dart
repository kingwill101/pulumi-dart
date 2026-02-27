// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRoute.
class GetRouteDatastreamV1alpha1Result {
  /// The create time of the resource.
  final String createTime;

  /// Destination address for connection
  final String destinationAddress;

  /// Destination port for connection
  final int destinationPort;

  /// Display name.
  final String displayName;

  /// Labels.
  final Map<String, String> labels;

  /// The resource's name.
  final String name;

  /// The update time of the resource.
  final String updateTime;

  GetRouteDatastreamV1alpha1Result({
    required this.createTime,
    required this.destinationAddress,
    required this.destinationPort,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['destinationAddress'] = destinationAddress;
    map['destinationPort'] = destinationPort;
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetRouteDatastreamV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetRouteDatastreamV1alpha1Result(
      createTime: map['createTime'] as String,
      destinationAddress: map['destinationAddress'] as String,
      destinationPort: map['destinationPort'] as int,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
