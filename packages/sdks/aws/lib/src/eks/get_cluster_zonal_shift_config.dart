// ignore_for_file: unused_element, unnecessary_cast


class GetClusterZonalShiftConfig {
  /// Whether zonal shift is enabled.
  final bool enabled;

  /// Creates a new [GetClusterZonalShiftConfig].
  /// [enabled] Whether zonal shift is enabled.
  GetClusterZonalShiftConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterZonalShiftConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterZonalShiftConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

