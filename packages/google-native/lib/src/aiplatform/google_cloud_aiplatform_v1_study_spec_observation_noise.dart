/// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
enum GoogleCloudAiplatformV1StudySpecObservationNoise {
  observationNoiseUnspecified("OBSERVATION_NOISE_UNSPECIFIED"),
  low("LOW"),
  high("HIGH");

  const GoogleCloudAiplatformV1StudySpecObservationNoise(this.value);
  final String value;

  static GoogleCloudAiplatformV1StudySpecObservationNoise fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudAiplatformV1StudySpecObservationNoise.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1StudySpecObservationNoise value: $value',
    );
  }
}
