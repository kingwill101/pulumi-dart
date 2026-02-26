// ignore_for_file: unused_element, unnecessary_cast

class GetDomainClusterConfigZoneAwarenessConfig {
  /// Number of availability zones used.
  final int availabilityZoneCount;

  GetDomainClusterConfigZoneAwarenessConfig({
    required this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZoneCount'] = availabilityZoneCount;
    return map;
  }

  factory GetDomainClusterConfigZoneAwarenessConfig.fromMap(
      Map<String, dynamic> map) {
    return GetDomainClusterConfigZoneAwarenessConfig(
      availabilityZoneCount: map['availabilityZoneCount'] as int,
    );
  }
}
