// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel {
  /// Identifier of the Amazon Bedrock model, or inference profile, used to compute the metrics.
  final pulumi.Input<String> modelIdentifier;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel].
  /// [modelIdentifier] Identifier of the Amazon Bedrock model, or inference profile, used to compute the metrics.
  const EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel({
    required this.modelIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelIdentifier': modelIdentifier,
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel(
      modelIdentifier: pulumi.Input.fromValue(map['modelIdentifier'] as String),
    );
  }
}
