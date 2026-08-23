// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel {
  /// Identifier of the Amazon Bedrock model, or inference profile, used to compute the metrics.
  final pulumi.Input<String> modelIdentifier;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel].
  /// [modelIdentifier] Identifier of the Amazon Bedrock model, or inference profile, used to compute the metrics.
  const EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel({
    required this.modelIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelIdentifier': modelIdentifier,
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel(
      modelIdentifier: pulumi.Input.fromValue(map['modelIdentifier'] as String),
    );
  }
}
