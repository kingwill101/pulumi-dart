// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2_evaluation_config.dart';

/// The set of arguments for Evaluation.
class EvaluationArgs {
  final Input<String> conversationModelId;

  /// Optional. The display name of the model evaluation. At most 64 bytes long.
  final Input<String>? displayName;

  /// Optional. The configuration of the evaluation task.
  final Input<GoogleCloudDialogflowV2EvaluationConfig>? evaluationConfig;
  final Input<String>? location;

  /// The resource name of the evaluation. Format: `projects//conversationModels//evaluations/`
  final Input<String>? name;
  final Input<String>? project;

  EvaluationArgs({
    required this.conversationModelId,
    this.displayName,
    this.evaluationConfig,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationModelId'] = conversationModelId;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final evaluationConfigValue = evaluationConfig;
    if (evaluationConfigValue != null) {
      map['evaluationConfig'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowV2EvaluationConfig, Map<String, dynamic>>(
          evaluationConfigValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EvaluationArgs.fromMap(Map<String, dynamic> map) {
    return EvaluationArgs(
      conversationModelId: Input.asInput<String>(map['conversationModelId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      evaluationConfig:
          Input.asOptionalInput<GoogleCloudDialogflowV2EvaluationConfig>(
              map['evaluationConfig']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
