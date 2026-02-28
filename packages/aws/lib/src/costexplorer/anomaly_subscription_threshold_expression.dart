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

  /// Creates a new [AnomalySubscriptionThresholdExpression].
  /// [ands] Return results that match both Dimension objects.
  /// [costCategory] Configuration block for the filter that's based on  values. See Cost Category below.
  /// [dimension] Configuration block for the specific Dimension to use for.
  /// [not] Return results that do not match the Dimension object.
  /// [ors] Return results that match either Dimension object.
  /// [tags] Configuration block for the specific Tag to use for. See Tags below.
  AnomalySubscriptionThresholdExpression({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?ands == null ? null : pulumi.Input.encodeList<AnomalySubscriptionThresholdExpressionAnd, Map<String, dynamic>>(ands!, (value) => value.toMap()),
      'costCategory': ?costCategory == null ? null : costCategory!.toMap(),
      'dimension': ?dimension == null ? null : dimension!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'ors': ?ors == null ? null : pulumi.Input.encodeList<AnomalySubscriptionThresholdExpressionOr, Map<String, dynamic>>(ors!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory AnomalySubscriptionThresholdExpression.fromMap(Map<String, dynamic> map) {
    return AnomalySubscriptionThresholdExpression(
      ands: map['ands'] == null ? null : pulumi.Input.decodeList<AnomalySubscriptionThresholdExpressionAnd>(map['ands'], (value) => AnomalySubscriptionThresholdExpressionAnd.fromMap((value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null ? null : AnomalySubscriptionThresholdExpressionCostCategory.fromMap((map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null ? null : AnomalySubscriptionThresholdExpressionDimension.fromMap((map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null ? null : AnomalySubscriptionThresholdExpressionNot.fromMap((map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null ? null : pulumi.Input.decodeList<AnomalySubscriptionThresholdExpressionOr>(map['ors'], (value) => AnomalySubscriptionThresholdExpressionOr.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : AnomalySubscriptionThresholdExpressionTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

