// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubscribedRuleGroup.
class GetSubscribedRuleGroupWafregionalArgs {
  /// Name of the WAF rule group.
  ///
  /// At least one of `name` or `metric_name` must be configured.
  final pulumi.Input<String>? metricName;

  /// Name of the WAF rule group.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetSubscribedRuleGroupWafregionalArgs({
    this.metricName,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetSubscribedRuleGroupWafregionalArgs.fromMap(
      Map<String, dynamic> map) {
    return GetSubscribedRuleGroupWafregionalArgs(
      metricName: pulumi.Input.asOptionalInput<String>(map['metricName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
