// ignore_for_file: unused_element, unnecessary_cast

import 'anomaly_subscription_threshold_expression_or_cost_category.dart';
import 'anomaly_subscription_threshold_expression_or_dimension.dart';
import 'anomaly_subscription_threshold_expression_or_tags.dart';

class AnomalySubscriptionThresholdExpressionOr {
  /// Configuration block for the filter that's based on  values. See Cost Category below.
  final AnomalySubscriptionThresholdExpressionOrCostCategory? costCategory;
  /// Configuration block for the specific Dimension to use for.
  final AnomalySubscriptionThresholdExpressionOrDimension? dimension;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final AnomalySubscriptionThresholdExpressionOrTags? tags;

  /// Creates a new [AnomalySubscriptionThresholdExpressionOr].
  /// [costCategory] Configuration block for the filter that's based on  values. See Cost Category below.
  /// [dimension] Configuration block for the specific Dimension to use for.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AnomalySubscriptionThresholdExpressionOr({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory AnomalySubscriptionThresholdExpressionOr.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionThresholdExpressionOr(
      costCategory: map['costCategory'] == null ? null : AnomalySubscriptionThresholdExpressionOrCostCategory.fromMap((map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null ? null : AnomalySubscriptionThresholdExpressionOrDimension.fromMap((map['dimension'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : AnomalySubscriptionThresholdExpressionOrTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

