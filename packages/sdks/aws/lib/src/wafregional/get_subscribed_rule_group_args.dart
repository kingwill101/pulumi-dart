// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafregional_get_subscribed_rule_group_get_subscribed_rule_group_args_doc}
/// Arguments for getSubscribedRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_wafregional_get_subscribed_rule_group_get_subscribed_rule_group_args_doc}
class GetSubscribedRuleGroupArgs {
  /// Name of the WAF rule group.
  ///
  /// At least one of `name` or `metric_name` must be configured.
  final pulumi.Input<String>? metricName;
  /// Name of the WAF rule group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSubscribedRuleGroupArgs].
  /// [metricName] Name of the WAF rule group.
  /// [name] Name of the WAF rule group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSubscribedRuleGroupArgs({
    this.metricName,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': ?metricName,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetSubscribedRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscribedRuleGroupArgs(
      metricName: map['metricName'] == null ? null : (map['metricName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

