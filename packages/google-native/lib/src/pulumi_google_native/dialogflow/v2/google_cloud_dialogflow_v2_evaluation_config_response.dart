// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2_evaluation_config_smart_compose_config_response.dart';
import 'google_cloud_dialogflow_v2_evaluation_config_smart_reply_config_response.dart';
import 'google_cloud_dialogflow_v2_input_dataset_response.dart';

/// The configuration for model evaluation.
class GoogleCloudDialogflowV2EvaluationConfigResponse {
  /// Datasets used for evaluation.
  final List<GoogleCloudDialogflowV2InputDatasetResponse> datasets;

  /// Configuration for smart compose model evalution.
  final GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfigResponse
      smartComposeConfig;

  /// Configuration for smart reply model evalution.
  final GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfigResponse
      smartReplyConfig;

  GoogleCloudDialogflowV2EvaluationConfigResponse({
    required this.datasets,
    required this.smartComposeConfig,
    required this.smartReplyConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasets'] = Input.encodeList<
        GoogleCloudDialogflowV2InputDatasetResponse,
        Map<String, dynamic>>(datasets, (value) => value.toMap());
    map['smartComposeConfig'] = smartComposeConfig.toMap();
    map['smartReplyConfig'] = smartReplyConfig.toMap();
    return map;
  }

  factory GoogleCloudDialogflowV2EvaluationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2EvaluationConfigResponse(
      datasets: Input.decodeList<GoogleCloudDialogflowV2InputDatasetResponse>(
          map['datasets'],
          (value) => GoogleCloudDialogflowV2InputDatasetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      smartComposeConfig:
          GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfigResponse
              .fromMap(
                  (map['smartComposeConfig'] as Map).cast<String, dynamic>()),
      smartReplyConfig:
          GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfigResponse
              .fromMap(
                  (map['smartReplyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
