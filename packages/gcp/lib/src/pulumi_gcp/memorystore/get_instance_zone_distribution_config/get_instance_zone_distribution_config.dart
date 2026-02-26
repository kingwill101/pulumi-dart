// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceZoneDistributionConfig {
  /// Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
  /// Possible values:
  /// MULTI_ZONE
  /// SINGLE_ZONE Possible values: ["MULTI_ZONE", "SINGLE_ZONE"]
  final String mode;

  /// Optional. Defines zone where all resources will be allocated with SINGLE_ZONE mode.
  /// Ignored for MULTI_ZONE mode.
  final String zone;

  GetInstanceZoneDistributionConfig({
    required this.mode,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceZoneDistributionConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceZoneDistributionConfig(
      mode: map['mode'] as String,
      zone: map['zone'] as String,
    );
  }
}
