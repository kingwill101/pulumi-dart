// ignore_for_file: unused_element, unnecessary_cast

import 'sku_recommendation_results_azure_sql_virtual_machine_response_category.dart';

class SkuRecommendationResultsAzureSqlVirtualMachineResponseTargetSku {
  final SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory? category;

  /// Creates a new [SkuRecommendationResultsAzureSqlVirtualMachineResponseTargetSku].
  /// [category] Optional.
  SkuRecommendationResultsAzureSqlVirtualMachineResponseTargetSku({
    this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category == null ? null : category!.toMap(),
    };
  }

  factory SkuRecommendationResultsAzureSqlVirtualMachineResponseTargetSku.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationResultsAzureSqlVirtualMachineResponseTargetSku(
      category: map['category'] == null ? null : SkuRecommendationResultsAzureSqlVirtualMachineResponseCategory.fromMap((map['category'] as Map).cast<String, dynamic>()),
    );
  }
}

