// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bqml_training_run_response.dart';
import 'model_definition_model_options_response.dart';

class ModelDefinitionResponse {
  /// [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
  final ModelDefinitionModelOptionsResponse modelOptions;

  /// [Output-only, Beta] Information about ml training runs, each training run comprises of multiple iterations and there may be multiple training runs for the model if warm start is used or if a user decides to continue a previously cancelled query.
  final List<BqmlTrainingRunResponse> trainingRuns;

  ModelDefinitionResponse({
    required this.modelOptions,
    required this.trainingRuns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelOptions'] = modelOptions.toMap();
    map['trainingRuns'] =
        pulumi.Input.encodeList<BqmlTrainingRunResponse, Map<String, dynamic>>(
            trainingRuns, (value) => value.toMap());
    return map;
  }

  factory ModelDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ModelDefinitionResponse(
      modelOptions: ModelDefinitionModelOptionsResponse.fromMap(
          (map['modelOptions'] as Map).cast<String, dynamic>()),
      trainingRuns: pulumi.Input.decodeList<BqmlTrainingRunResponse>(
          map['trainingRuns'],
          (value) => BqmlTrainingRunResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
