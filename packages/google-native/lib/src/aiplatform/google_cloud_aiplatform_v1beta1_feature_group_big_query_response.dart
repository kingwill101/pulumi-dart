// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_big_query_source_response.dart';

/// Input source type for BigQuery Tables and Views.
class GoogleCloudAiplatformV1beta1FeatureGroupBigQueryResponse {
  /// Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  final GoogleCloudAiplatformV1beta1BigQuerySourceResponse bigQuerySource;

  /// Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  final List<String> entityIdColumns;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureGroupBigQueryResponse].
  /// [bigQuerySource] Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  /// [entityIdColumns] Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  GoogleCloudAiplatformV1beta1FeatureGroupBigQueryResponse({
    required this.bigQuerySource,
    required this.entityIdColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuerySource': bigQuerySource.toMap(),
      'entityIdColumns': entityIdColumns,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureGroupBigQueryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1FeatureGroupBigQueryResponse(
      bigQuerySource:
          GoogleCloudAiplatformV1beta1BigQuerySourceResponse.fromMap(
            (map['bigQuerySource'] as Map).cast<String, dynamic>(),
          ),
      entityIdColumns: (map['entityIdColumns'] as List).cast<String>(),
    );
  }
}
