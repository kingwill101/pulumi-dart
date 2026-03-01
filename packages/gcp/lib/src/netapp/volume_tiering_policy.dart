// ignore_for_file: unused_element, unnecessary_cast

class VolumeTieringPolicy {
  /// Optional. Time in days to mark the volume's data block as cold and make it eligible for tiering, can be range from 2-183.
  /// Default is 31.
  final int? coolingThresholdDays;

  /// Optional. Flag indicating that the hot tier bypass mode is enabled. Default is false.
  /// Only applicable to Flex service level.
  final bool? hotTierBypassModeEnabled;

  /// Optional. Flag indicating if the volume has tiering policy enable/pause. Default is PAUSED.
  /// Default value is `PAUSED`.
  /// Possible values are: `ENABLED`, `PAUSED`.
  final String? tierAction;

  /// Creates a new [VolumeTieringPolicy].
  /// [coolingThresholdDays] Optional. Time in days to mark the volume's data block as cold and make it eligible for tiering, can be range from 2-183.
  /// [hotTierBypassModeEnabled] Optional. Flag indicating that the hot tier bypass mode is enabled. Default is false.
  /// [tierAction] Optional. Flag indicating if the volume has tiering policy enable/pause. Default is PAUSED.
  VolumeTieringPolicy({
    this.coolingThresholdDays,
    this.hotTierBypassModeEnabled,
    this.tierAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolingThresholdDays': ?coolingThresholdDays,
      'hotTierBypassModeEnabled': ?hotTierBypassModeEnabled,
      'tierAction': ?tierAction,
    };
  }

  factory VolumeTieringPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeTieringPolicy(
      coolingThresholdDays: map['coolingThresholdDays'] == null
          ? null
          : map['coolingThresholdDays'] as int,
      hotTierBypassModeEnabled: map['hotTierBypassModeEnabled'] == null
          ? null
          : map['hotTierBypassModeEnabled'] as bool,
      tierAction: map['tierAction'] == null
          ? null
          : map['tierAction'] as String,
    );
  }
}
