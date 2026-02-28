// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_big_query_source.dart';
import 'google_cloud_aiplatform_v1_gcs_source.dart';
import 'google_cloud_aiplatform_v1_sampling_strategy.dart';

/// Training Dataset information.
class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset {
  /// The BigQuery table of the unmanaged Dataset used to train this Model.
  final GoogleCloudAiplatformV1BigQuerySource? bigquerySource;

  /// Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  final String? dataFormat;

  /// The resource name of the Dataset used to train this Model.
  final String? dataset;

  /// The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  final GoogleCloudAiplatformV1GcsSource? gcsSource;

  /// Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  final GoogleCloudAiplatformV1SamplingStrategy? loggingSamplingStrategy;

  /// The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  final String? targetField;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset].
  /// [bigquerySource] The BigQuery table of the unmanaged Dataset used to train this Model.
  /// [dataFormat] Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  /// [dataset] The resource name of the Dataset used to train this Model.
  /// [gcsSource] The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  /// [loggingSamplingStrategy] Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  /// [targetField] The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset({
    this.bigquerySource,
    this.dataFormat,
    this.dataset,
    this.gcsSource,
    this.loggingSamplingStrategy,
    this.targetField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigquerySourceValue = bigquerySource;
    if (bigquerySourceValue != null) {
      map['bigquerySource'] = bigquerySourceValue.toMap();
    }
    final dataFormatValue = dataFormat;
    if (dataFormatValue != null) {
      map['dataFormat'] = dataFormatValue;
    }
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue;
    }
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] = gcsSourceValue.toMap();
    }
    final loggingSamplingStrategyValue = loggingSamplingStrategy;
    if (loggingSamplingStrategyValue != null) {
      map['loggingSamplingStrategy'] = loggingSamplingStrategyValue.toMap();
    }
    final targetFieldValue = targetField;
    if (targetFieldValue != null) {
      map['targetField'] = targetFieldValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset(
      bigquerySource: map['bigquerySource'] == null
          ? null
          : GoogleCloudAiplatformV1BigQuerySource.fromMap(
              (map['bigquerySource'] as Map).cast<String, dynamic>()),
      dataFormat:
          map['dataFormat'] == null ? null : map['dataFormat'] as String,
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      gcsSource: map['gcsSource'] == null
          ? null
          : GoogleCloudAiplatformV1GcsSource.fromMap(
              (map['gcsSource'] as Map).cast<String, dynamic>()),
      loggingSamplingStrategy: map['loggingSamplingStrategy'] == null
          ? null
          : GoogleCloudAiplatformV1SamplingStrategy.fromMap(
              (map['loggingSamplingStrategy'] as Map).cast<String, dynamic>()),
      targetField:
          map['targetField'] == null ? null : map['targetField'] as String,
    );
  }
}
