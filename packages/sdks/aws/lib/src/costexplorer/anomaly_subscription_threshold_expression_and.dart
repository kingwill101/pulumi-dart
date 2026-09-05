// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_subscription_threshold_expression_and_cost_category.dart';
import 'anomaly_subscription_threshold_expression_and_dimension.dart';
import 'anomaly_subscription_threshold_expression_and_tags.dart';

class AnomalySubscriptionThresholdExpressionAnd {
  /// Configuration block for the filter that's based on  values. See Cost Category below.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionAndCostCategory?>? costCategory;
  /// Configuration block for the specific Dimension to use for.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionAndDimension?>? dimension;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionAndTags?>? tags;

  /// Creates a new [AnomalySubscriptionThresholdExpressionAnd].
  /// [costCategory] Configuration block for the filter that's based on  values. See Cost Category below.
  /// [dimension] Configuration block for the specific Dimension to use for.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AnomalySubscriptionThresholdExpressionAnd({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategory': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionAndCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionAndDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionAndTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory AnomalySubscriptionThresholdExpressionAnd.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionThresholdExpressionAnd(
      costCategory: (() { final guardedValue = map['costCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpressionAndCostCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpressionAndDimension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpressionAndTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
