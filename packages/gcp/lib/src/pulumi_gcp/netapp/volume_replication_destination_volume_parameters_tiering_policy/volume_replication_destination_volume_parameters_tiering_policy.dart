// ignore_for_file: unused_element, unnecessary_cast

class VolumeReplicationDestinationVolumeParametersTieringPolicy {
  /// Optional. Time in days to mark the volume's data block as cold and make it eligible for tiering, can be range from 2-183.
  /// Default is 31.
  final int? coolingThresholdDays;

  /// Optional. Flag indicating if the volume has tiering policy enable/pause. Default is PAUSED.
  /// Default value is `PAUSED`.
  /// Possible values are: `ENABLED`, `PAUSED`.
  final String? tierAction;

  VolumeReplicationDestinationVolumeParametersTieringPolicy({
    this.coolingThresholdDays,
    this.tierAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final coolingThresholdDaysValue = coolingThresholdDays;
    if (coolingThresholdDaysValue != null) {
      map['coolingThresholdDays'] = coolingThresholdDaysValue;
    }
    final tierActionValue = tierAction;
    if (tierActionValue != null) {
      map['tierAction'] = tierActionValue;
    }
    return map;
  }

  factory VolumeReplicationDestinationVolumeParametersTieringPolicy.fromMap(
      Map<String, dynamic> map) {
    return VolumeReplicationDestinationVolumeParametersTieringPolicy(
      coolingThresholdDays: map['coolingThresholdDays'] == null
          ? null
          : map['coolingThresholdDays'] as int,
      tierAction:
          map['tierAction'] == null ? null : map['tierAction'] as String,
    );
  }
}
