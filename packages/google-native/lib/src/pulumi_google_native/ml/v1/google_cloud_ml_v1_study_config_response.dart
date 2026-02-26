// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_ml_v1_automated_stopping_config_response.dart';
import 'google_cloud_ml_v1_study_config_metric_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_response.dart';

/// Represents configuration of a study.
class GoogleCloudMlV1StudyConfigResponse {
  /// The search algorithm specified for the study.
  final String algorithm;

  /// Configuration for automated stopping of unpromising Trials.
  final GoogleCloudMlV1AutomatedStoppingConfigResponse automatedStoppingConfig;

  /// Metric specs for the study.
  final List<GoogleCloudMlV1StudyConfigMetricSpecResponse> metrics;

  /// The set of parameters to tune.
  final List<GoogleCloudMlV1StudyConfigParameterSpecResponse> parameters;

  GoogleCloudMlV1StudyConfigResponse({
    required this.algorithm,
    required this.automatedStoppingConfig,
    required this.metrics,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['automatedStoppingConfig'] = automatedStoppingConfig.toMap();
    map['metrics'] = Input.encodeList<
        GoogleCloudMlV1StudyConfigMetricSpecResponse,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['parameters'] = Input.encodeList<
        GoogleCloudMlV1StudyConfigParameterSpecResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudMlV1StudyConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigResponse(
      algorithm: map['algorithm'] as String,
      automatedStoppingConfig:
          GoogleCloudMlV1AutomatedStoppingConfigResponse.fromMap(
              (map['automatedStoppingConfig'] as Map).cast<String, dynamic>()),
      metrics: Input.decodeList<GoogleCloudMlV1StudyConfigMetricSpecResponse>(
          map['metrics'],
          (value) => GoogleCloudMlV1StudyConfigMetricSpecResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      parameters:
          Input.decodeList<GoogleCloudMlV1StudyConfigParameterSpecResponse>(
              map['parameters'],
              (value) =>
                  GoogleCloudMlV1StudyConfigParameterSpecResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
