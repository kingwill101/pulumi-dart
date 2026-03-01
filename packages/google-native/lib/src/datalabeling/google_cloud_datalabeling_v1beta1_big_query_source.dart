// ignore_for_file: unused_element, unnecessary_cast

/// The BigQuery location for input data. If used in an EvaluationJob, this is where the service saves the prediction input and output sampled from the model version.
class GoogleCloudDatalabelingV1beta1BigQuerySource {
  /// BigQuery URI to a table, up to 2,000 characters long. If you specify the URI of a table that does not exist, Data Labeling Service creates a table at the URI with the correct schema when you create your EvaluationJob. If you specify the URI of a table that already exists, it must have the [correct schema](/ml-engine/docs/continuous-evaluation/create-job#table-schema). Provide the table URI in the following format: "bq://{your_project_id}/ {your_dataset_name}/{your_table_name}" [Learn more](/ml-engine/docs/continuous-evaluation/create-job#table-schema).
  final String inputUri;

  /// Creates a new [GoogleCloudDatalabelingV1beta1BigQuerySource].
  /// [inputUri] BigQuery URI to a table, up to 2,000 characters long. If you specify the URI of a table that does not exist, Data Labeling Service creates a table at the URI with the correct schema when you create your EvaluationJob. If you specify the URI of a table that already exists, it must have the [correct schema](/ml-engine/docs/continuous-evaluation/create-job#table-schema). Provide the table URI in the following format: "bq://{your_project_id}/ {your_dataset_name}/{your_table_name}" [Learn more](/ml-engine/docs/continuous-evaluation/create-job#table-schema).
  GoogleCloudDatalabelingV1beta1BigQuerySource({required this.inputUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'inputUri': inputUri};
  }

  factory GoogleCloudDatalabelingV1beta1BigQuerySource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatalabelingV1beta1BigQuerySource(
      inputUri: map['inputUri'] as String,
    );
  }
}
