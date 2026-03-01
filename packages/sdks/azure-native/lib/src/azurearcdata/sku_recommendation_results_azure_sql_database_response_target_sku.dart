// ignore_for_file: unused_element, unnecessary_cast

import 'sku_recommendation_results_azure_sql_database_response_category.dart';

class SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku {
  final SkuRecommendationResultsAzureSqlDatabaseResponseCategory? category;

  /// Creates a new [SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku].
  /// [category] Optional.
  SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku({
    this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category == null ? null : category!.toMap(),
    };
  }

  factory SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku(
      category: map['category'] == null ? null : SkuRecommendationResultsAzureSqlDatabaseResponseCategory.fromMap((map['category'] as Map).cast<String, dynamic>()),
    );
  }
}

