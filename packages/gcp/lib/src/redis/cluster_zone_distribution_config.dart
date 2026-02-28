// ignore_for_file: unused_element, unnecessary_cast

class ClusterZoneDistributionConfig {
  /// Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// If not provided, MULTI_ZONE will be used as default
  /// Possible values are: `MULTI_ZONE`, `SINGLE_ZONE`.
  final String? mode;

  /// Immutable. The zone for single zone Memorystore Redis cluster.
  final String? zone;

  /// Creates a new [ClusterZoneDistributionConfig].
  /// [mode] Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// [zone] Immutable. The zone for single zone Memorystore Redis cluster.
  ClusterZoneDistributionConfig({
    this.mode,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ClusterZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return ClusterZoneDistributionConfig(
      mode: map['mode'] == null ? null : map['mode'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
