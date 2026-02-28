// ignore_for_file: unused_element, unnecessary_cast

/// Settings related to NLU.
class GoogleCloudDialogflowCxV3beta1NluSettingsResponse {
  /// To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  final double classificationThreshold;

  /// Indicates NLU model training mode.
  final String modelTrainingMode;

  /// Indicates the type of NLU model.
  final String modelType;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1NluSettingsResponse].
  /// [classificationThreshold] To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  /// [modelTrainingMode] Indicates NLU model training mode.
  /// [modelType] Indicates the type of NLU model.
  GoogleCloudDialogflowCxV3beta1NluSettingsResponse({
    required this.classificationThreshold,
    required this.modelTrainingMode,
    required this.modelType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['classificationThreshold'] = classificationThreshold;
    map['modelTrainingMode'] = modelTrainingMode;
    map['modelType'] = modelType;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1NluSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1NluSettingsResponse(
      classificationThreshold: map['classificationThreshold'] as double,
      modelTrainingMode: map['modelTrainingMode'] as String,
      modelType: map['modelType'] as String,
    );
  }
}
