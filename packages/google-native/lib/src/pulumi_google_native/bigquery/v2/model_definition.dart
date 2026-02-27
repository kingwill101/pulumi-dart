// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'bqml_training_run.dart';
import 'model_definition_model_options.dart';

class ModelDefinition {
  /// [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
  final ModelDefinitionModelOptions? modelOptions;

  /// [Output-only, Beta] Information about ml training runs, each training run comprises of multiple iterations and there may be multiple training runs for the model if warm start is used or if a user decides to continue a previously cancelled query.
  final List<BqmlTrainingRun>? trainingRuns;

  ModelDefinition({
    this.modelOptions,
    this.trainingRuns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modelOptionsValue = modelOptions;
    if (modelOptionsValue != null) {
      map['modelOptions'] = modelOptionsValue.toMap();
    }
    final trainingRunsValue = trainingRuns;
    if (trainingRunsValue != null) {
      map['trainingRuns'] =
          Input.encodeList<BqmlTrainingRun, Map<String, dynamic>>(
              trainingRunsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ModelDefinition.fromMap(Map<String, dynamic> map) {
    return ModelDefinition(
      modelOptions: map['modelOptions'] == null
          ? null
          : ModelDefinitionModelOptions.fromMap(
              (map['modelOptions'] as Map).cast<String, dynamic>()),
      trainingRuns: map['trainingRuns'] == null
          ? null
          : Input.decodeList<BqmlTrainingRun>(
              map['trainingRuns'],
              (value) => BqmlTrainingRun.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
