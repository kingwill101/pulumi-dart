// ignore_for_file: unused_element, unnecessary_cast

import '../stream_rule_set_customization_rule_bigquery_clustering/stream_rule_set_customization_rule_bigquery_clustering.dart';
import '../stream_rule_set_customization_rule_bigquery_partitioning/stream_rule_set_customization_rule_bigquery_partitioning.dart';

class StreamRuleSetCustomizationRule {
  /// BigQuery clustering rule.
  /// Structure is documented below.
  final StreamRuleSetCustomizationRuleBigqueryClustering? bigqueryClustering;

  /// BigQuery partitioning rule.
  /// Structure is documented below.
  final StreamRuleSetCustomizationRuleBigqueryPartitioning?
      bigqueryPartitioning;

  StreamRuleSetCustomizationRule({
    this.bigqueryClustering,
    this.bigqueryPartitioning,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryClusteringValue = bigqueryClustering;
    if (bigqueryClusteringValue != null) {
      map['bigqueryClustering'] = bigqueryClusteringValue.toMap();
    }
    final bigqueryPartitioningValue = bigqueryPartitioning;
    if (bigqueryPartitioningValue != null) {
      map['bigqueryPartitioning'] = bigqueryPartitioningValue.toMap();
    }
    return map;
  }

  factory StreamRuleSetCustomizationRule.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRule(
      bigqueryClustering: map['bigqueryClustering'] == null
          ? null
          : StreamRuleSetCustomizationRuleBigqueryClustering.fromMap(
              (map['bigqueryClustering'] as Map).cast<String, dynamic>()),
      bigqueryPartitioning: map['bigqueryPartitioning'] == null
          ? null
          : StreamRuleSetCustomizationRuleBigqueryPartitioning.fromMap(
              (map['bigqueryPartitioning'] as Map).cast<String, dynamic>()),
    );
  }
}
