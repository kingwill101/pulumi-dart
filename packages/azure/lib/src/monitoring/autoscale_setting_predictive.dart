// ignore_for_file: unused_element, unnecessary_cast


class AutoscaleSettingPredictive {
  /// Specifies the amount of time by which instances are launched in advance. It must be between `PT1M` and `PT1H` in ISO 8601 format.
  final String? lookAheadTime;
  /// Specifies the predictive scale mode. Possible values are `Enabled` or `ForecastOnly`.
  final String scaleMode;

  /// Creates a new [AutoscaleSettingPredictive].
  /// [lookAheadTime] Specifies the amount of time by which instances are launched in advance. It must be between `PT1M` and `PT1H` in ISO 8601 format.
  /// [scaleMode] Specifies the predictive scale mode. Possible values are `Enabled` or `ForecastOnly`.
  AutoscaleSettingPredictive({
    this.lookAheadTime,
    required this.scaleMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookAheadTime': ?lookAheadTime,
      'scaleMode': scaleMode,
    };
  }

  factory AutoscaleSettingPredictive.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingPredictive(
      lookAheadTime: map['lookAheadTime'] == null ? null : map['lookAheadTime'] as String,
      scaleMode: map['scaleMode'] as String,
    );
  }
}

