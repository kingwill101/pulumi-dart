// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2_evaluation_config_smart_compose_config.dart';
import 'google_cloud_dialogflow_v2_evaluation_config_smart_reply_config.dart';
import 'google_cloud_dialogflow_v2_input_dataset.dart';

/// The configuration for model evaluation.
class GoogleCloudDialogflowV2EvaluationConfig {
  /// Datasets used for evaluation.
  final List<GoogleCloudDialogflowV2InputDataset> datasets;

  /// Configuration for smart compose model evalution.
  final GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig?
      smartComposeConfig;

  /// Configuration for smart reply model evalution.
  final GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig?
      smartReplyConfig;

  GoogleCloudDialogflowV2EvaluationConfig({
    required this.datasets,
    this.smartComposeConfig,
    this.smartReplyConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasets'] = Input.encodeList<GoogleCloudDialogflowV2InputDataset,
        Map<String, dynamic>>(datasets, (value) => value.toMap());
    final smartComposeConfigValue = smartComposeConfig;
    if (smartComposeConfigValue != null) {
      map['smartComposeConfig'] = smartComposeConfigValue.toMap();
    }
    final smartReplyConfigValue = smartReplyConfig;
    if (smartReplyConfigValue != null) {
      map['smartReplyConfig'] = smartReplyConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDialogflowV2EvaluationConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2EvaluationConfig(
      datasets: Input.decodeList<GoogleCloudDialogflowV2InputDataset>(
          map['datasets'],
          (value) => GoogleCloudDialogflowV2InputDataset.fromMap(
              (value as Map).cast<String, dynamic>())),
      smartComposeConfig: map['smartComposeConfig'] == null
          ? null
          : GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig.fromMap(
              (map['smartComposeConfig'] as Map).cast<String, dynamic>()),
      smartReplyConfig: map['smartReplyConfig'] == null
          ? null
          : GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig.fromMap(
              (map['smartReplyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
