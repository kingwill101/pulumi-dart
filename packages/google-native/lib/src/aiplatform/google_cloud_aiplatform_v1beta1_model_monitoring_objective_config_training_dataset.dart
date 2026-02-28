// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_big_query_source.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_source.dart';
import 'google_cloud_aiplatform_v1beta1_sampling_strategy.dart';

/// Training Dataset information.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDataset {
  /// The BigQuery table of the unmanaged Dataset used to train this Model.
  final GoogleCloudAiplatformV1beta1BigQuerySource? bigquerySource;
  /// Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  final String? dataFormat;
  /// The resource name of the Dataset used to train this Model.
  final String? dataset;
  /// The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  final GoogleCloudAiplatformV1beta1GcsSource? gcsSource;
  /// Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  final GoogleCloudAiplatformV1beta1SamplingStrategy? loggingSamplingStrategy;
  /// The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  final String? targetField;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDataset].
  /// [bigquerySource] The BigQuery table of the unmanaged Dataset used to train this Model.
  /// [dataFormat] Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  /// [dataset] The resource name of the Dataset used to train this Model.
  /// [gcsSource] The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  /// [loggingSamplingStrategy] Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  /// [targetField] The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDataset({
    this.bigquerySource,
    this.dataFormat,
    this.dataset,
    this.gcsSource,
    this.loggingSamplingStrategy,
    this.targetField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquerySource': ?bigquerySource == null ? null : bigquerySource!.toMap(),
      'dataFormat': ?dataFormat,
      'dataset': ?dataset,
      'gcsSource': ?gcsSource == null ? null : gcsSource!.toMap(),
      'loggingSamplingStrategy': ?loggingSamplingStrategy == null ? null : loggingSamplingStrategy!.toMap(),
      'targetField': ?targetField,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDataset.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDataset(
      bigquerySource: map['bigquerySource'] == null ? null : GoogleCloudAiplatformV1beta1BigQuerySource.fromMap((map['bigquerySource'] as Map).cast<String, dynamic>()),
      dataFormat: map['dataFormat'] == null ? null : map['dataFormat'] as String,
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      gcsSource: map['gcsSource'] == null ? null : GoogleCloudAiplatformV1beta1GcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>()),
      loggingSamplingStrategy: map['loggingSamplingStrategy'] == null ? null : GoogleCloudAiplatformV1beta1SamplingStrategy.fromMap((map['loggingSamplingStrategy'] as Map).cast<String, dynamic>()),
      targetField: map['targetField'] == null ? null : map['targetField'] as String,
    );
  }
}

