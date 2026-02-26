// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_big_query_destination_response.dart';
import 'google_cloud_aiplatform_v1_filter_split_response.dart';
import 'google_cloud_aiplatform_v1_fraction_split_response.dart';
import 'google_cloud_aiplatform_v1_gcs_destination_response.dart';
import 'google_cloud_aiplatform_v1_predefined_split_response.dart';
import 'google_cloud_aiplatform_v1_stratified_split_response.dart';
import 'google_cloud_aiplatform_v1_timestamp_split_response.dart';

/// Specifies Vertex AI owned input data to be used for training, and possibly evaluating, the Model.
class GoogleCloudAiplatformV1InputDataConfigResponse {
  /// Applicable only to custom training with Datasets that have DataItems and Annotations. Cloud Storage URI that points to a YAML file describing the annotation schema. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/annotation/ , note that the chosen schema must be consistent with metadata of the Dataset specified by dataset_id. Only Annotations that both match this schema and belong to DataItems not ignored by the split method are used in respectively training, validation or test role, depending on the role of the DataItem they are on. When used in conjunction with annotations_filter, the Annotations used for training are filtered by both annotations_filter and annotation_schema_uri.
  final String annotationSchemaUri;

  /// Applicable only to Datasets that have DataItems and Annotations. A filter on Annotations of the Dataset. Only Annotations that both match this filter and belong to DataItems not ignored by the split method are used in respectively training, validation or test role, depending on the role of the DataItem they are on (for the auto-assigned that role is decided by Vertex AI). A filter with same syntax as the one used in ListAnnotations may be used, but note here it filters across all Annotations of the Dataset, and not just within a single DataItem.
  final String annotationsFilter;

  /// Only applicable to custom training with tabular Dataset with BigQuery source. The BigQuery project location where the training data is to be written to. In the given project a new dataset is created with name `dataset___` where timestamp is in YYYY_MM_DDThh_mm_ss_sssZ format. All training input data is written into that dataset. In the dataset three tables are created, `training`, `validation` and `test`. * AIP_DATA_FORMAT = "bigquery". * AIP_TRAINING_DATA_URI = "bigquery_destination.dataset___.training" * AIP_VALIDATION_DATA_URI = "bigquery_destination.dataset___.validation" * AIP_TEST_DATA_URI = "bigquery_destination.dataset___.test"
  final GoogleCloudAiplatformV1BigQueryDestinationResponse bigqueryDestination;

  /// The ID of the Dataset in the same Project and Location which data will be used to train the Model. The Dataset must use schema compatible with Model being trained, and what is compatible should be described in the used TrainingPipeline's training_task_definition. For tabular Datasets, all their data is exported to training, to pick and choose from.
  final String datasetId;

  /// Split based on the provided filters for each set.
  final GoogleCloudAiplatformV1FilterSplitResponse filterSplit;

  /// Split based on fractions defining the size of each set.
  final GoogleCloudAiplatformV1FractionSplitResponse fractionSplit;

  /// The Cloud Storage location where the training data is to be written to. In the given directory a new directory is created with name: `dataset---` where timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format. All training input data is written into that directory. The Vertex AI environment variables representing Cloud Storage data URIs are represented in the Cloud Storage wildcard format to support sharded data. e.g.: "gs://.../training-*.jsonl" * AIP_DATA_FORMAT = "jsonl" for non-tabular data, "csv" for tabular data * AIP_TRAINING_DATA_URI = "gcs_destination/dataset---/training-*.${AIP_DATA_FORMAT}" * AIP_VALIDATION_DATA_URI = "gcs_destination/dataset---/validation-*.${AIP_DATA_FORMAT}" * AIP_TEST_DATA_URI = "gcs_destination/dataset---/test-*.${AIP_DATA_FORMAT}"
  final GoogleCloudAiplatformV1GcsDestinationResponse gcsDestination;

  /// Whether to persist the ML use assignment to data item system labels.
  final bool persistMlUseAssignment;

  /// Supported only for tabular Datasets. Split based on a predefined key.
  final GoogleCloudAiplatformV1PredefinedSplitResponse predefinedSplit;

  /// Only applicable to Datasets that have SavedQueries. The ID of a SavedQuery (annotation set) under the Dataset specified by dataset_id used for filtering Annotations for training. Only Annotations that are associated with this SavedQuery are used in respectively training. When used in conjunction with annotations_filter, the Annotations used for training are filtered by both saved_query_id and annotations_filter. Only one of saved_query_id and annotation_schema_uri should be specified as both of them represent the same thing: problem type.
  final String savedQueryId;

  /// Supported only for tabular Datasets. Split based on the distribution of the specified column.
  final GoogleCloudAiplatformV1StratifiedSplitResponse stratifiedSplit;

  /// Supported only for tabular Datasets. Split based on the timestamp of the input data pieces.
  final GoogleCloudAiplatformV1TimestampSplitResponse timestampSplit;

  GoogleCloudAiplatformV1InputDataConfigResponse({
    required this.annotationSchemaUri,
    required this.annotationsFilter,
    required this.bigqueryDestination,
    required this.datasetId,
    required this.filterSplit,
    required this.fractionSplit,
    required this.gcsDestination,
    required this.persistMlUseAssignment,
    required this.predefinedSplit,
    required this.savedQueryId,
    required this.stratifiedSplit,
    required this.timestampSplit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationSchemaUri'] = annotationSchemaUri;
    map['annotationsFilter'] = annotationsFilter;
    map['bigqueryDestination'] = bigqueryDestination.toMap();
    map['datasetId'] = datasetId;
    map['filterSplit'] = filterSplit.toMap();
    map['fractionSplit'] = fractionSplit.toMap();
    map['gcsDestination'] = gcsDestination.toMap();
    map['persistMlUseAssignment'] = persistMlUseAssignment;
    map['predefinedSplit'] = predefinedSplit.toMap();
    map['savedQueryId'] = savedQueryId;
    map['stratifiedSplit'] = stratifiedSplit.toMap();
    map['timestampSplit'] = timestampSplit.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1InputDataConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1InputDataConfigResponse(
      annotationSchemaUri: map['annotationSchemaUri'] as String,
      annotationsFilter: map['annotationsFilter'] as String,
      bigqueryDestination:
          GoogleCloudAiplatformV1BigQueryDestinationResponse.fromMap(
              (map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      datasetId: map['datasetId'] as String,
      filterSplit: GoogleCloudAiplatformV1FilterSplitResponse.fromMap(
          (map['filterSplit'] as Map).cast<String, dynamic>()),
      fractionSplit: GoogleCloudAiplatformV1FractionSplitResponse.fromMap(
          (map['fractionSplit'] as Map).cast<String, dynamic>()),
      gcsDestination: GoogleCloudAiplatformV1GcsDestinationResponse.fromMap(
          (map['gcsDestination'] as Map).cast<String, dynamic>()),
      persistMlUseAssignment: map['persistMlUseAssignment'] as bool,
      predefinedSplit: GoogleCloudAiplatformV1PredefinedSplitResponse.fromMap(
          (map['predefinedSplit'] as Map).cast<String, dynamic>()),
      savedQueryId: map['savedQueryId'] as String,
      stratifiedSplit: GoogleCloudAiplatformV1StratifiedSplitResponse.fromMap(
          (map['stratifiedSplit'] as Map).cast<String, dynamic>()),
      timestampSplit: GoogleCloudAiplatformV1TimestampSplitResponse.fromMap(
          (map['timestampSplit'] as Map).cast<String, dynamic>()),
    );
  }
}
