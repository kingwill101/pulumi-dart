// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSubscribedRuleGroup.
class GetSubscribedRuleGroupArgs {
  /// Name of the WAF rule group.
  ///
  /// At least one of `name` or `metric_name` must be configured.
  final Input<String>? metricName;

  /// Name of the WAF rule group.
  final Input<String>? name;

  GetSubscribedRuleGroupArgs({
    this.metricName,
    this.name,
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
    return map;
  }

  factory GetSubscribedRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscribedRuleGroupArgs(
      metricName: Input.asOptionalInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
