// ignore_for_file: unused_element, unnecessary_cast

import 'anomaly_subscription_threshold_expression_and_cost_category.dart';
import 'anomaly_subscription_threshold_expression_and_dimension.dart';
import 'anomaly_subscription_threshold_expression_and_tags.dart';

class AnomalySubscriptionThresholdExpressionAnd {
  /// Configuration block for the filter that's based on  values. See Cost Category below.
  final AnomalySubscriptionThresholdExpressionAndCostCategory? costCategory;

  /// Configuration block for the specific Dimension to use for.
  final AnomalySubscriptionThresholdExpressionAndDimension? dimension;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final AnomalySubscriptionThresholdExpressionAndTags? tags;

  /// Creates a new [AnomalySubscriptionThresholdExpressionAnd].
  /// [costCategory] Configuration block for the filter that's based on  values. See Cost Category below.
  /// [dimension] Configuration block for the specific Dimension to use for.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AnomalySubscriptionThresholdExpressionAnd({
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

  factory AnomalySubscriptionThresholdExpressionAnd.fromMap(
      Map<String, dynamic> map) {
    return AnomalySubscriptionThresholdExpressionAnd(
      costCategory: map['costCategory'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionAndCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionAndDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionAndTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
