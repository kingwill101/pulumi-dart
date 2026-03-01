// ignore_for_file: unused_element, unnecessary_cast

import 'ai_feature_group_big_query_big_query_source.dart';

class AiFeatureGroupBigQuery {
  /// The BigQuery source URI that points to either a BigQuery Table or View.
  /// Structure is documented below.
  final AiFeatureGroupBigQueryBigQuerySource bigQuerySource;
  /// Columns to construct entityId / row keys. If not provided defaults to entityId.
  final List<String>? entityIdColumns;

  /// Creates a new [AiFeatureGroupBigQuery].
  /// [bigQuerySource] The BigQuery source URI that points to either a BigQuery Table or View.
  /// [entityIdColumns] Columns to construct entityId / row keys. If not provided defaults to entityId.
  AiFeatureGroupBigQuery({
    required this.bigQuerySource,
    this.entityIdColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuerySource': bigQuerySource.toMap(),
      'entityIdColumns': ?entityIdColumns,
    };
  }

  factory AiFeatureGroupBigQuery.fromMap(Map<String, dynamic> map) {
    return AiFeatureGroupBigQuery(
      bigQuerySource: AiFeatureGroupBigQueryBigQuerySource.fromMap((map['bigQuerySource'] as Map).cast<String, dynamic>()),
      entityIdColumns: map['entityIdColumns'] == null ? null : (map['entityIdColumns'] as List).cast<String>(),
    );
  }
}

