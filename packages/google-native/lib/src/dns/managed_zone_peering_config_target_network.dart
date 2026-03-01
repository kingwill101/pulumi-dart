// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePeeringConfigTargetNetwork {
  /// The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  final String? deactivateTime;
  final String? kind;

  /// The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String? networkUrl;

  /// Creates a new [ManagedZonePeeringConfigTargetNetwork].
  /// [deactivateTime] The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ManagedZonePeeringConfigTargetNetwork({
    this.deactivateTime,
    this.kind,
    this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deactivateTime': ?deactivateTime,
      'kind': ?kind,
      'networkUrl': ?networkUrl,
    };
  }

  factory ManagedZonePeeringConfigTargetNetwork.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZonePeeringConfigTargetNetwork(
      deactivateTime: map['deactivateTime'] == null
          ? null
          : map['deactivateTime'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      networkUrl: map['networkUrl'] == null
          ? null
          : map['networkUrl'] as String,
    );
  }
}
