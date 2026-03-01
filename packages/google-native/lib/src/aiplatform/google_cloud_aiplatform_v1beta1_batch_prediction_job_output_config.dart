// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_big_query_destination.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_destination.dart';

/// Configures the output of BatchPredictionJob. See Model.supported_output_storage_formats for supported output formats, and how predictions are expressed via any of them.
class GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig {
  /// The BigQuery project or dataset location where the output is to be written to. If project is provided, a new dataset is created with name `prediction__` where is made BigQuery-dataset-name compatible (for example, most special characters become underscores), and timestamp is in YYYY_MM_DDThh_mm_ss_sssZ "based on ISO-8601" format. In the dataset two tables will be created, `predictions`, and `errors`. If the Model has both instance and prediction schemata defined then the tables have columns as follows: The `predictions` table contains instances for which the prediction succeeded, it has columns as per a concatenation of the Model's instance and prediction schemata. The `errors` table contains rows for which the prediction has failed, it has instance columns, as per the instance schema, followed by a single "errors" column, which as values has google.rpc.Status represented as a STRUCT, and containing only `code` and `message`.
  final GoogleCloudAiplatformV1beta1BigQueryDestination? bigqueryDestination;

  /// The Cloud Storage location of the directory where the output is to be written to. In the given directory a new directory is created. Its name is `prediction--`, where timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format. Inside of it files `predictions_0001.`, `predictions_0002.`, ..., `predictions_N.` are created where `` depends on chosen predictions_format, and N may equal 0001 and depends on the total number of successfully predicted instances. If the Model has both instance and prediction schemata defined then each such file contains predictions as per the predictions_format. If prediction for any instance failed (partially or completely), then an additional `errors_0001.`, `errors_0002.`,..., `errors_N.` files are created (N depends on total number of failed predictions). These files contain the failed instances, as per their schema, followed by an additional `error` field which as value has google.rpc.Status containing only `code` and `message` fields.
  final GoogleCloudAiplatformV1beta1GcsDestination? gcsDestination;

  /// The format in which Vertex AI gives the predictions, must be one of the Model's supported_output_storage_formats.
  final String predictionsFormat;

  /// Creates a new [GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig].
  /// [bigqueryDestination] The BigQuery project or dataset location where the output is to be written to. If project is provided, a new dataset is created with name `prediction__` where is made BigQuery-dataset-name compatible (for example, most special characters become underscores), and timestamp is in YYYY_MM_DDThh_mm_ss_sssZ "based on ISO-8601" format. In the dataset two tables will be created, `predictions`, and `errors`. If the Model has both instance and prediction schemata defined then the tables have columns as follows: The `predictions` table contains instances for which the prediction succeeded, it has columns as per a concatenation of the Model's instance and prediction schemata. The `errors` table contains rows for which the prediction has failed, it has instance columns, as per the instance schema, followed by a single "errors" column, which as values has google.rpc.Status represented as a STRUCT, and containing only `code` and `message`.
  /// [gcsDestination] The Cloud Storage location of the directory where the output is to be written to. In the given directory a new directory is created. Its name is `prediction--`, where timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format. Inside of it files `predictions_0001.`, `predictions_0002.`, ..., `predictions_N.` are created where `` depends on chosen predictions_format, and N may equal 0001 and depends on the total number of successfully predicted instances. If the Model has both instance and prediction schemata defined then each such file contains predictions as per the predictions_format. If prediction for any instance failed (partially or completely), then an additional `errors_0001.`, `errors_0002.`,..., `errors_N.` files are created (N depends on total number of failed predictions). These files contain the failed instances, as per their schema, followed by an additional `error` field which as value has google.rpc.Status containing only `code` and `message` fields.
  /// [predictionsFormat] The format in which Vertex AI gives the predictions, must be one of the Model's supported_output_storage_formats.
  GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig({
    this.bigqueryDestination,
    this.gcsDestination,
    required this.predictionsFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': ?bigqueryDestination == null
          ? null
          : bigqueryDestination!.toMap(),
      'gcsDestination': ?gcsDestination == null
          ? null
          : gcsDestination!.toMap(),
      'predictionsFormat': predictionsFormat,
    };
  }

  factory GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig(
      bigqueryDestination: map['bigqueryDestination'] == null
          ? null
          : GoogleCloudAiplatformV1beta1BigQueryDestination.fromMap(
              (map['bigqueryDestination'] as Map).cast<String, dynamic>(),
            ),
      gcsDestination: map['gcsDestination'] == null
          ? null
          : GoogleCloudAiplatformV1beta1GcsDestination.fromMap(
              (map['gcsDestination'] as Map).cast<String, dynamic>(),
            ),
      predictionsFormat: map['predictionsFormat'] as String,
    );
  }
}
