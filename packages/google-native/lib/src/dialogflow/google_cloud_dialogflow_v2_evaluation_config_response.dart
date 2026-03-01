// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [GoogleCloudDialogflowV2EvaluationConfigResponse].
  /// [datasets] Datasets used for evaluation.
  /// [smartComposeConfig] Configuration for smart compose model evalution.
  /// [smartReplyConfig] Configuration for smart reply model evalution.
  GoogleCloudDialogflowV2EvaluationConfigResponse({
    required this.datasets,
    required this.smartComposeConfig,
    required this.smartReplyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowV2InputDatasetResponse,
            Map<String, dynamic>
          >(datasets, (value) => value.toMap()),
      'smartComposeConfig': smartComposeConfig.toMap(),
      'smartReplyConfig': smartReplyConfig.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2EvaluationConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2EvaluationConfigResponse(
      datasets:
          pulumi.Input.decodeList<GoogleCloudDialogflowV2InputDatasetResponse>(
            map['datasets'],
            (value) => GoogleCloudDialogflowV2InputDatasetResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      smartComposeConfig:
          GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfigResponse.fromMap(
            (map['smartComposeConfig'] as Map).cast<String, dynamic>(),
          ),
      smartReplyConfig:
          GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfigResponse.fromMap(
            (map['smartReplyConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
