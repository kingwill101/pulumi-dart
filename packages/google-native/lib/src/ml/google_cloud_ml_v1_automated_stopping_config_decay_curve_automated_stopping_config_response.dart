// ignore_for_file: unused_element, unnecessary_cast

class GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse {
  /// If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
  final bool useElapsedTime;

  /// Creates a new [GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse].
  /// [useElapsedTime] If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
  GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse({
    required this.useElapsedTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['useElapsedTime'] = useElapsedTime;
    return map;
  }

  factory GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfigResponse(
      useElapsedTime: map['useElapsedTime'] as bool,
    );
  }
}
