// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated_dataset_metric_config_dataset_dataset_location.dart';

class EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset {
  /// Location of a custom prompt dataset. See `datasetLocation` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation?>? datasetLocation;
  /// Name of a built-in prompt dataset, for example `Builtin.Bold`, or a label for a custom prompt dataset.
  final pulumi.Input<String> name;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset].
  /// [datasetLocation] Location of a custom prompt dataset. See `datasetLocation` Block below.
  /// [name] Name of a built-in prompt dataset, for example `Builtin.Bold`, or a label for a custom prompt dataset.
  const EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset({
    this.datasetLocation,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetLocation': ?pulumi.Input.mapOptionalInputValue<EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation, Map<String, dynamic>>(datasetLocation, (value) => value.toMap()),
      'name': name,
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset(
      datasetLocation: (() { final guardedValue = map['datasetLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
