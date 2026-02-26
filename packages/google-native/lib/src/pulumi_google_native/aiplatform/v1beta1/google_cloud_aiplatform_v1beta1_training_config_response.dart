// ignore_for_file: unused_element, unnecessary_cast

/// CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
class GoogleCloudAiplatformV1beta1TrainingConfigResponse {
  /// The timeout hours for the CMLE training job, expressed in milli hours i.e. 1,000 value in this field means 1 hour.
  final String timeoutTrainingMilliHours;

  GoogleCloudAiplatformV1beta1TrainingConfigResponse({
    required this.timeoutTrainingMilliHours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['timeoutTrainingMilliHours'] = timeoutTrainingMilliHours;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1TrainingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1TrainingConfigResponse(
      timeoutTrainingMilliHours: map['timeoutTrainingMilliHours'] as String,
    );
  }
}
