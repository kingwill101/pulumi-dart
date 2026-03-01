// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_big_query_source_response.dart';
import 'google_cloud_aiplatform_v1_gcs_source_response.dart';
import 'google_cloud_aiplatform_v1_sampling_strategy_response.dart';

/// Training Dataset information.
class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDatasetResponse {
  /// The BigQuery table of the unmanaged Dataset used to train this Model.
  final GoogleCloudAiplatformV1BigQuerySourceResponse bigquerySource;

  /// Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  final String dataFormat;

  /// The resource name of the Dataset used to train this Model.
  final String dataset;

  /// The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  final GoogleCloudAiplatformV1GcsSourceResponse gcsSource;

  /// Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  final GoogleCloudAiplatformV1SamplingStrategyResponse loggingSamplingStrategy;

  /// The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  final String targetField;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDatasetResponse].
  /// [bigquerySource] The BigQuery table of the unmanaged Dataset used to train this Model.
  /// [dataFormat] Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  /// [dataset] The resource name of the Dataset used to train this Model.
  /// [gcsSource] The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  /// [loggingSamplingStrategy] Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  /// [targetField] The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDatasetResponse({
    required this.bigquerySource,
    required this.dataFormat,
    required this.dataset,
    required this.gcsSource,
    required this.loggingSamplingStrategy,
    required this.targetField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquerySource': bigquerySource.toMap(),
      'dataFormat': dataFormat,
      'dataset': dataset,
      'gcsSource': gcsSource.toMap(),
      'loggingSamplingStrategy': loggingSamplingStrategy.toMap(),
      'targetField': targetField,
    };
  }

  factory GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDatasetResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDatasetResponse(
      bigquerySource: GoogleCloudAiplatformV1BigQuerySourceResponse.fromMap(
        (map['bigquerySource'] as Map).cast<String, dynamic>(),
      ),
      dataFormat: map['dataFormat'] as String,
      dataset: map['dataset'] as String,
      gcsSource: GoogleCloudAiplatformV1GcsSourceResponse.fromMap(
        (map['gcsSource'] as Map).cast<String, dynamic>(),
      ),
      loggingSamplingStrategy:
          GoogleCloudAiplatformV1SamplingStrategyResponse.fromMap(
            (map['loggingSamplingStrategy'] as Map).cast<String, dynamic>(),
          ),
      targetField: map['targetField'] as String,
    );
  }
}
