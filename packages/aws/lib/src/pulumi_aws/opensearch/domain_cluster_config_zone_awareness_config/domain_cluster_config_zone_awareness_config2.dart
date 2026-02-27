// ignore_for_file: unused_element, unnecessary_cast

class DomainClusterConfigZoneAwarenessConfig2 {
  /// Number of Availability Zones for the domain to use with `zone_awareness_enabled`. Defaults to `2`. Valid values: `2` or `3`.
  final int? availabilityZoneCount;

  DomainClusterConfigZoneAwarenessConfig2({
    this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneCountValue = availabilityZoneCount;
    if (availabilityZoneCountValue != null) {
      map['availabilityZoneCount'] = availabilityZoneCountValue;
    }
    return map;
  }

  factory DomainClusterConfigZoneAwarenessConfig2.fromMap(
      Map<String, dynamic> map) {
    return DomainClusterConfigZoneAwarenessConfig2(
      availabilityZoneCount: map['availabilityZoneCount'] == null
          ? null
          : map['availabilityZoneCount'] as int,
    );
  }
}
