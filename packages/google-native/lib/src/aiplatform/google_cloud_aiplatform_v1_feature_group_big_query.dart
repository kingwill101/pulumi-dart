// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_big_query_source.dart';

/// Input source type for BigQuery Tables and Views.
class GoogleCloudAiplatformV1FeatureGroupBigQuery {
  /// Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  final GoogleCloudAiplatformV1BigQuerySource bigQuerySource;

  /// Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  final List<String>? entityIdColumns;

  /// Creates a new [GoogleCloudAiplatformV1FeatureGroupBigQuery].
  /// [bigQuerySource] Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  /// [entityIdColumns] Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  GoogleCloudAiplatformV1FeatureGroupBigQuery({
    required this.bigQuerySource,
    this.entityIdColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQuerySource'] = bigQuerySource.toMap();
    final entityIdColumnsValue = entityIdColumns;
    if (entityIdColumnsValue != null) {
      map['entityIdColumns'] = entityIdColumnsValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1FeatureGroupBigQuery.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureGroupBigQuery(
      bigQuerySource: GoogleCloudAiplatformV1BigQuerySource.fromMap(
          (map['bigQuerySource'] as Map).cast<String, dynamic>()),
      entityIdColumns: map['entityIdColumns'] == null
          ? null
          : (map['entityIdColumns'] as List).cast<String>(),
    );
  }
}
