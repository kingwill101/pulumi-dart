// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated_evaluator_model_config_bedrock_evaluator_model.dart';

class EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig {
  /// Evaluator model. See `bedrockEvaluatorModel` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel> bedrockEvaluatorModel;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig].
  /// [bedrockEvaluatorModel] Evaluator model. See `bedrockEvaluatorModel` Block below.
  const EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig({
    required this.bedrockEvaluatorModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockEvaluatorModel': pulumi.Input.mapInputValue<EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel, Map<String, dynamic>>(bedrockEvaluatorModel, (value) => value.toMap()),
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfig(
      bedrockEvaluatorModel: pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomatedEvaluatorModelConfigBedrockEvaluatorModel.fromMap((map['bedrockEvaluatorModel']! as Map).cast<String, dynamic>())),
    );
  }
}
