// ignore_for_file: unused_element, unnecessary_cast

class InstanceZoneDistributionConfig {
  /// Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// Possible values:
  /// MULTI_ZONE
  /// SINGLE_ZONE
  /// Possible values are: `MULTI_ZONE`, `SINGLE_ZONE`.
  final String? mode;

  /// Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  /// Ignored for MULTI_ZONE mode.
  final String? zone;

  /// Creates a new [InstanceZoneDistributionConfig].
  /// [mode] Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// [zone] Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  InstanceZoneDistributionConfig({
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

  factory InstanceZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return InstanceZoneDistributionConfig(
      mode: map['mode'] == null ? null : map['mode'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
