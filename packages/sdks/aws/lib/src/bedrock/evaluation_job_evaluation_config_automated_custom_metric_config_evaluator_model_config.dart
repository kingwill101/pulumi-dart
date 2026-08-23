// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated_custom_metric_config_evaluator_model_config_bedrock_evaluator_model.dart';

class EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig {
  /// Evaluator model. See `bedrockEvaluatorModel` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel> bedrockEvaluatorModel;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig].
  /// [bedrockEvaluatorModel] Evaluator model. See `bedrockEvaluatorModel` Block below.
  const EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig({
    required this.bedrockEvaluatorModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockEvaluatorModel': pulumi.Input.mapInputValue<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel, Map<String, dynamic>>(bedrockEvaluatorModel, (value) => value.toMap()),
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfig(
      bedrockEvaluatorModel: pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomatedCustomMetricConfigEvaluatorModelConfigBedrockEvaluatorModel.fromMap((map['bedrockEvaluatorModel']! as Map).cast<String, dynamic>())),
    );
  }
}
