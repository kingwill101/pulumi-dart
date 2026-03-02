// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_subscription_threshold_expression_not_cost_category.dart';
import 'anomaly_subscription_threshold_expression_not_dimension.dart';
import 'anomaly_subscription_threshold_expression_not_tags.dart';

class AnomalySubscriptionThresholdExpressionNot {
  /// Configuration block for the filter that's based on  values. See Cost Category below.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionNotCostCategory>? costCategory;
  /// Configuration block for the specific Dimension to use for.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionNotDimension>? dimension;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionNotTags>? tags;

  /// Creates a new [AnomalySubscriptionThresholdExpressionNot].
  /// [costCategory] Configuration block for the filter that's based on  values. See Cost Category below.
  /// [dimension] Configuration block for the specific Dimension to use for.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AnomalySubscriptionThresholdExpressionNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionNotCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionNotDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionNotTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory AnomalySubscriptionThresholdExpressionNot.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionThresholdExpressionNot(
      costCategory: map['costCategory'] == null ? null : (AnomalySubscriptionThresholdExpressionNotCostCategory.fromMap((map['costCategory'] as Map).cast<String, dynamic>())).input(),
      dimension: map['dimension'] == null ? null : (AnomalySubscriptionThresholdExpressionNotDimension.fromMap((map['dimension'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (AnomalySubscriptionThresholdExpressionNotTags.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

