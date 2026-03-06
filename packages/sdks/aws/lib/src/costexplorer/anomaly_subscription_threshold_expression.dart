// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_subscription_threshold_expression_and.dart';
import 'anomaly_subscription_threshold_expression_cost_category.dart';
import 'anomaly_subscription_threshold_expression_dimension.dart';
import 'anomaly_subscription_threshold_expression_not.dart';
import 'anomaly_subscription_threshold_expression_or.dart';
import 'anomaly_subscription_threshold_expression_tags.dart';

class AnomalySubscriptionThresholdExpression {
  /// Return results that match both Dimension objects.
  final pulumi.Input<List<AnomalySubscriptionThresholdExpressionAnd>>? ands;
  /// Configuration block for the filter that's based on  values. See Cost Category below.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionCostCategory>? costCategory;
  /// Configuration block for the specific Dimension to use for.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionDimension>? dimension;
  /// Return results that do not match the Dimension object.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionNot>? not;
  /// Return results that match either Dimension object.
  final pulumi.Input<List<AnomalySubscriptionThresholdExpressionOr>>? ors;
  /// Configuration block for the specific Tag to use for. See Tags below.
  final pulumi.Input<AnomalySubscriptionThresholdExpressionTags>? tags;

  /// Creates a new [AnomalySubscriptionThresholdExpression].
  /// [ands] Return results that match both Dimension objects.
  /// [costCategory] Configuration block for the filter that's based on  values. See Cost Category below.
  /// [dimension] Configuration block for the specific Dimension to use for.
  /// [not] Return results that do not match the Dimension object.
  /// [ors] Return results that match either Dimension object.
  /// [tags] Configuration block for the specific Tag to use for. See Tags below.
  const AnomalySubscriptionThresholdExpression({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<AnomalySubscriptionThresholdExpressionAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<AnomalySubscriptionThresholdExpressionAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategory': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionCostCategory, Map<String, dynamic>>(costCategory, (value) => value.toMap()),
      'dimension': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionDimension, Map<String, dynamic>>(dimension, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<AnomalySubscriptionThresholdExpressionOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<AnomalySubscriptionThresholdExpressionOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<AnomalySubscriptionThresholdExpressionTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory AnomalySubscriptionThresholdExpression.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionThresholdExpression(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnomalySubscriptionThresholdExpressionAnd>(guardedValue, (value) => AnomalySubscriptionThresholdExpressionAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      costCategory: (() { final guardedValue = map['costCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpressionCostCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpressionDimension.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpressionNot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ors: (() { final guardedValue = map['ors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnomalySubscriptionThresholdExpressionOr>(guardedValue, (value) => AnomalySubscriptionThresholdExpressionOr.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalySubscriptionThresholdExpressionTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

