// ignore_for_file: unused_element, unnecessary_cast

class GetClusterZoneDistributionConfig {
  /// Immutable. The mode for zone distribution for Memorystore Redis cluster.
  /// If not provided, MULTI_ZONE will be used as default Possible values: ["MULTI_ZONE", "SINGLE_ZONE"]
  final String mode;

  /// Immutable. The zone for single zone Memorystore Redis cluster.
  final String zone;

  GetClusterZoneDistributionConfig({
    required this.mode,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['zone'] = zone;
    return map;
  }

  factory GetClusterZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterZoneDistributionConfig(
      mode: map['mode'] as String,
      zone: map['zone'] as String,
    );
  }
}
