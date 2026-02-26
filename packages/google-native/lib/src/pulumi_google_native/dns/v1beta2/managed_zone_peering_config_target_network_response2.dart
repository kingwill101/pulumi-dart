// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePeeringConfigTargetNetworkResponse2 {
  /// The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.
  final String deactivateTime;
  final String kind;

  /// The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String networkUrl;

  ManagedZonePeeringConfigTargetNetworkResponse2({
    required this.deactivateTime,
    required this.kind,
    required this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deactivateTime'] = deactivateTime;
    map['kind'] = kind;
    map['networkUrl'] = networkUrl;
    return map;
  }

  factory ManagedZonePeeringConfigTargetNetworkResponse2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePeeringConfigTargetNetworkResponse2(
      deactivateTime: map['deactivateTime'] as String,
      kind: map['kind'] as String,
      networkUrl: map['networkUrl'] as String,
    );
  }
}
