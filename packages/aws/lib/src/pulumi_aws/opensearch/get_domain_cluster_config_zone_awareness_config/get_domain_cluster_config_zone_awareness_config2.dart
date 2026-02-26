// ignore_for_file: unused_element, unnecessary_cast

class GetDomainClusterConfigZoneAwarenessConfig2 {
  /// Number of availability zones used.
  final int availabilityZoneCount;

  GetDomainClusterConfigZoneAwarenessConfig2({
    required this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZoneCount'] = availabilityZoneCount;
    return map;
  }

  factory GetDomainClusterConfigZoneAwarenessConfig2.fromMap(
      Map<String, dynamic> map) {
    return GetDomainClusterConfigZoneAwarenessConfig2(
      availabilityZoneCount: map['availabilityZoneCount'] as int,
    );
  }
}
