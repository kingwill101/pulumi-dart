// ignore_for_file: unused_element, unnecessary_cast


/// Zone and associated hosts info
class ClusterZoneResponse {
  /// List of hosts belonging to the availability zone in a cluster
  final List<String> hosts;
  /// Availability zone identifier
  final String zone;

  /// Creates a new [ClusterZoneResponse].
  /// [hosts] List of hosts belonging to the availability zone in a cluster
  /// [zone] Availability zone identifier
  ClusterZoneResponse({
    required this.hosts,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
      'zone': zone,
    };
  }

  factory ClusterZoneResponse.fromMap(Map<String, dynamic> map) {
    return ClusterZoneResponse(
      hosts: (map['hosts'] as List).cast<String>(),
      zone: map['zone'] as String,
    );
  }
}

