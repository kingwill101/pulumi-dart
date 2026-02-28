// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_nlu_settings_model_training_mode.dart';
import 'google_cloud_dialogflow_cx_v3_nlu_settings_model_type.dart';

/// Settings related to NLU.
class GoogleCloudDialogflowCxV3NluSettings {
  /// To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  final double? classificationThreshold;

  /// Indicates NLU model training mode.
  final GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode?
      modelTrainingMode;

  /// Indicates the type of NLU model.
  final GoogleCloudDialogflowCxV3NluSettingsModelType? modelType;

  /// Creates a new [GoogleCloudDialogflowCxV3NluSettings].
  /// [classificationThreshold] To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  /// [modelTrainingMode] Indicates NLU model training mode.
  /// [modelType] Indicates the type of NLU model.
  GoogleCloudDialogflowCxV3NluSettings({
    this.classificationThreshold,
    this.modelTrainingMode,
    this.modelType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final classificationThresholdValue = classificationThreshold;
    if (classificationThresholdValue != null) {
      map['classificationThreshold'] = classificationThresholdValue;
    }
    final modelTrainingModeValue = modelTrainingMode;
    if (modelTrainingModeValue != null) {
      map['modelTrainingMode'] = modelTrainingModeValue.value;
    }
    final modelTypeValue = modelType;
    if (modelTypeValue != null) {
      map['modelType'] = modelTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3NluSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3NluSettings(
      classificationThreshold: map['classificationThreshold'] == null
          ? null
          : map['classificationThreshold'] as double,
      modelTrainingMode: map['modelTrainingMode'] == null
          ? null
          : GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode.fromValue(
              map['modelTrainingMode'] as String),
      modelType: map['modelType'] == null
          ? null
          : GoogleCloudDialogflowCxV3NluSettingsModelType.fromValue(
              map['modelType'] as String),
    );
  }
}
