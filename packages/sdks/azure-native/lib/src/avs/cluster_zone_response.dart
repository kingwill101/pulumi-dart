// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Zone and associated hosts info
class ClusterZoneResponse {
  /// List of hosts belonging to the availability zone in a cluster
  final pulumi.Input<List<String>> hosts;
  /// Availability zone identifier
  final pulumi.Input<String> zone;

  /// Creates a new [ClusterZoneResponse].
  /// [hosts] List of hosts belonging to the availability zone in a cluster
  /// [zone] Availability zone identifier
  const ClusterZoneResponse({
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
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

