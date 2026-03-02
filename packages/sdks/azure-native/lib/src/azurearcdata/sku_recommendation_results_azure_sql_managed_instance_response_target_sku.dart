// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_recommendation_results_azure_sql_managed_instance_response_category.dart';

class SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku {
  final pulumi.Input<SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory>? category;

  /// Creates a new [SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku].
  /// [category] Optional.
  SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku({
    this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?pulumi.Input.mapOptionalInputValue<SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
    };
  }

  factory SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlManagedInstanceResponseTargetSku(
      category: map['category'] == null ? null : (SkuRecommendationResultsAzureSqlManagedInstanceResponseCategory.fromMap((map['category'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

