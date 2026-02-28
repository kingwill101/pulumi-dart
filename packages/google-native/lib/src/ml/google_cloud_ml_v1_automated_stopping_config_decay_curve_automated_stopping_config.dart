// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig {
  /// If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
  final bool? useElapsedTime;

  /// Creates a new [GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig].
  /// [useElapsedTime] If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
  GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig({
    this.useElapsedTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final useElapsedTimeValue = useElapsedTime;
    if (useElapsedTimeValue != null) {
      map['useElapsedTime'] = useElapsedTimeValue;
    }
    return map;
  }

  factory GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig(
      useElapsedTime:
          map['useElapsedTime'] == null ? null : map['useElapsedTime'] as bool,
    );
  }
}
