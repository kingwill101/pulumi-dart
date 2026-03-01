// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
class AggregationRule {
  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  final List<LabelSelector>? clusterRoleSelectors;

  /// Creates a new [AggregationRule].
  /// [clusterRoleSelectors] ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  AggregationRule({
    this.clusterRoleSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterRoleSelectors': ?clusterRoleSelectors == null ? null : pulumi.Input.encodeList<LabelSelector, Map<String, dynamic>>(clusterRoleSelectors!, (value) => value.toMap()),
    };
  }

  factory AggregationRule.fromMap(Map<String, dynamic> map) {
    return AggregationRule(
      clusterRoleSelectors: map['clusterRoleSelectors'] == null ? null : pulumi.Input.decodeList<LabelSelector>(map['clusterRoleSelectors'], (value) => LabelSelector.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

