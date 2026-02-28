// ignore_for_file: unused_element, unnecessary_cast

/// The decay curve automated stopping rule builds a Gaussian Process Regressor to predict the final objective value of a Trial based on the already completed Trials and the intermediate measurements of the current Trial. Early stopping is requested for the current Trial if there is very low probability to exceed the optimal value found so far.
class GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpecResponse {
  /// True if Measurement.elapsed_duration is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.step_count will be used as the x-axis.
  final bool useElapsedDuration;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpecResponse].
  /// [useElapsedDuration] True if Measurement.elapsed_duration is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.step_count will be used as the x-axis.
  GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpecResponse({
    required this.useElapsedDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['useElapsedDuration'] = useElapsedDuration;
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpecResponse(
      useElapsedDuration: map['useElapsedDuration'] as bool,
    );
  }
}
