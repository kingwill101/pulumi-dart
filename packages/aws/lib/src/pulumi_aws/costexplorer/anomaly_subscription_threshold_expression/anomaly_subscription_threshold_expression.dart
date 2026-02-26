// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../anomaly_subscription_threshold_expression_and/anomaly_subscription_threshold_expression_and.dart';
import '../anomaly_subscription_threshold_expression_cost_category/anomaly_subscription_threshold_expression_cost_category.dart';
import '../anomaly_subscription_threshold_expression_dimension/anomaly_subscription_threshold_expression_dimension.dart';
import '../anomaly_subscription_threshold_expression_not/anomaly_subscription_threshold_expression_not.dart';
import '../anomaly_subscription_threshold_expression_or/anomaly_subscription_threshold_expression_or.dart';
import '../anomaly_subscription_threshold_expression_tags/anomaly_subscription_threshold_expression_tags.dart';

class AnomalySubscriptionThresholdExpression {
  /// Return results that match both Dimension objects.
  final List<AnomalySubscriptionThresholdExpressionAnd>? ands;

  /// Configuration block for the filter that's based on  values. See Cost Category below.
  final AnomalySubscriptionThresholdExpressionCostCategory? costCategory;

  /// Configuration block for the specific Dimension to use for.
  final AnomalySubscriptionThresholdExpressionDimension? dimension;

  /// Return results that do not match the Dimension object.
  final AnomalySubscriptionThresholdExpressionNot? not;

  /// Return results that match either Dimension object.
  final List<AnomalySubscriptionThresholdExpressionOr>? ors;

  /// Configuration block for the specific Tag to use for. See Tags below.
  final AnomalySubscriptionThresholdExpressionTags? tags;

  AnomalySubscriptionThresholdExpression({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final andsValue = ands;
    if (andsValue != null) {
      map['ands'] = Input.encodeList<AnomalySubscriptionThresholdExpressionAnd,
          Map<String, dynamic>>(andsValue, (value) => value.toMap());
    }
    final costCategoryValue = costCategory;
    if (costCategoryValue != null) {
      map['costCategory'] = costCategoryValue.toMap();
    }
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue.toMap();
    }
    final notValue = not;
    if (notValue != null) {
      map['not'] = notValue.toMap();
    }
    final orsValue = ors;
    if (orsValue != null) {
      map['ors'] = Input.encodeList<AnomalySubscriptionThresholdExpressionOr,
          Map<String, dynamic>>(orsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory AnomalySubscriptionThresholdExpression.fromMap(
      Map<String, dynamic> map) {
    return AnomalySubscriptionThresholdExpression(
      ands: map['ands'] == null
          ? null
          : Input.decodeList<AnomalySubscriptionThresholdExpressionAnd>(
              map['ands'],
              (value) => AnomalySubscriptionThresholdExpressionAnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null
          ? null
          : Input.decodeList<AnomalySubscriptionThresholdExpressionOr>(
              map['ors'],
              (value) => AnomalySubscriptionThresholdExpressionOr.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : AnomalySubscriptionThresholdExpressionTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
