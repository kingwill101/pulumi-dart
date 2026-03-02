// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_subscribed_rule_group_get_subscribed_rule_group_args_doc}
/// Arguments for getSubscribedRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_waf_get_subscribed_rule_group_get_subscribed_rule_group_args_doc}
class GetSubscribedRuleGroupArgs {
  /// Name of the WAF rule group.
  ///
  /// At least one of `name` or `metric_name` must be configured.
  final pulumi.Input<String>? metricName;
  /// Name of the WAF rule group.
  final pulumi.Input<String>? name;

  /// Creates a new [GetSubscribedRuleGroupArgs].
  /// [metricName] Name of the WAF rule group.
  /// [name] Name of the WAF rule group.
  GetSubscribedRuleGroupArgs({
    this.metricName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': ?metricName,
      'name': ?name,
    };
  }

  factory GetSubscribedRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscribedRuleGroupArgs(
      metricName: map['metricName'] == null ? null : (map['metricName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

