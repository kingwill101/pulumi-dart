// ignore_for_file: unused_element, unnecessary_cast

class DnsZonePeeringConfig {
  /// The name of the producer VPC network.
  final String targetNetworkId;

  /// The ID of the project that contains the producer VPC network.
  final String targetProjectId;

  DnsZonePeeringConfig({
    required this.targetNetworkId,
    required this.targetProjectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetNetworkId'] = targetNetworkId;
    map['targetProjectId'] = targetProjectId;
    return map;
  }

  factory DnsZonePeeringConfig.fromMap(Map<String, dynamic> map) {
    return DnsZonePeeringConfig(
      targetNetworkId: map['targetNetworkId'] as String,
      targetProjectId: map['targetProjectId'] as String,
    );
  }
}
