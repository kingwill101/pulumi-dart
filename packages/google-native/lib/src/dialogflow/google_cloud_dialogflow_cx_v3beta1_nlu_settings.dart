// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_nlu_settings_model_training_mode.dart';
import 'google_cloud_dialogflow_cx_v3beta1_nlu_settings_model_type.dart';

/// Settings related to NLU.
class GoogleCloudDialogflowCxV3beta1NluSettings {
  /// To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  final double? classificationThreshold;
  /// Indicates NLU model training mode.
  final GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode? modelTrainingMode;
  /// Indicates the type of NLU model.
  final GoogleCloudDialogflowCxV3beta1NluSettingsModelType? modelType;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1NluSettings].
  /// [classificationThreshold] To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
  /// [modelTrainingMode] Indicates NLU model training mode.
  /// [modelType] Indicates the type of NLU model.
  GoogleCloudDialogflowCxV3beta1NluSettings({
    this.classificationThreshold,
    this.modelTrainingMode,
    this.modelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classificationThreshold': ?classificationThreshold,
      'modelTrainingMode': ?modelTrainingMode == null ? null : modelTrainingMode!.value,
      'modelType': ?modelType == null ? null : modelType!.value,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1NluSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1NluSettings(
      classificationThreshold: map['classificationThreshold'] == null ? null : map['classificationThreshold'] as double,
      modelTrainingMode: map['modelTrainingMode'] == null ? null : GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode.fromValue(map['modelTrainingMode'] as String),
      modelType: map['modelType'] == null ? null : GoogleCloudDialogflowCxV3beta1NluSettingsModelType.fromValue(map['modelType'] as String),
    );
  }
}

