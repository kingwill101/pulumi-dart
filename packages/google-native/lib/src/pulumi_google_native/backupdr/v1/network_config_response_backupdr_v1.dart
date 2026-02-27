// ignore_for_file: unused_element, unnecessary_cast

/// Network configuration for ManagementServer instance.
class NetworkConfigResponseBackupdrV1 {
  /// Optional. The resource name of the Google Compute Engine VPC network to which the ManagementServer instance is connected.
  final String network;

  /// Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVATE_SERVICE_ACCESS is supported.
  final String peeringMode;

  NetworkConfigResponseBackupdrV1({
    required this.network,
    required this.peeringMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['network'] = network;
    map['peeringMode'] = peeringMode;
    return map;
  }

  factory NetworkConfigResponseBackupdrV1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseBackupdrV1(
      network: map['network'] as String,
      peeringMode: map['peeringMode'] as String,
    );
  }
}
