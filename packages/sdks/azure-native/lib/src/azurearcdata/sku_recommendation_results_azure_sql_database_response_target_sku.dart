// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_recommendation_results_azure_sql_database_response_category.dart';

class SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku {
  final pulumi.Input<SkuRecommendationResultsAzureSqlDatabaseResponseCategory>?
  category;

  /// Creates a new [SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku].
  /// [category] Optional.
  SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku({this.category});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category':
          ?pulumi.Input.mapOptionalInputValue<
            SkuRecommendationResultsAzureSqlDatabaseResponseCategory,
            Map<String, dynamic>
          >(category, (value) => value.toMap()),
    };
  }

  factory SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku.fromMap(
    Map<String, dynamic> map,
  ) {
    return SkuRecommendationResultsAzureSqlDatabaseResponseTargetSku(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SkuRecommendationResultsAzureSqlDatabaseResponseCategory.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
