// ignore_for_file: unused_element, unnecessary_cast

class ClusterZonalShiftConfig {
  /// Whether zonal shift is enabled for the cluster.
  final bool? enabled;

  /// Creates a new [ClusterZonalShiftConfig].
  /// [enabled] Whether zonal shift is enabled for the cluster.
  ClusterZonalShiftConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ClusterZonalShiftConfig.fromMap(Map<String, dynamic> map) {
    return ClusterZonalShiftConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
