// ignore_for_file: unused_element, unnecessary_cast

import '../anomaly_subscription_threshold_expression_or_cost_category/anomaly_subscription_threshold_expression_or_cost_category.dart';
import '../anomaly_subscription_threshold_expression_or_dimension/anomaly_subscription_threshold_expression_or_dimension.dart';
import '../anomaly_subscription_threshold_expression_or_tags/anomaly_subscription_threshold_expression_or_tags.dart';

class AnomalySubscriptionThresholdExpressionOr {
  /// Configuration block for the filter that's based on  values. See Cost Category below.
  final AnomalySubscriptionThresholdExpressionOrCostCategory? costCategory;

  /// Configuration block for the specific Dimension to use for.
  final AnomalySubscriptionThresholdExpressionOrDimension? dimension;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final AnomalySubscriptionThresholdExpressionOrTags? tags;

  AnomalySubscriptionThresholdExpressionOr({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final costCategoryValue = costCategory;
    if (costCategoryValue != null) {
      map['costCategory'] = costCategoryValue.toMap();
    }
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory AnomalySubscriptionThresholdExpressionOr.fromMap(
      Map<String, dynamic> map) {
    return AnomalySubscriptionThresholdExpressionOr(
      costCategory: map['costCategory'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionOrCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionOrDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionOrTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
