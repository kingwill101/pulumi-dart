// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSubscribedRuleGroup.
class GetSubscribedRuleGroupArgs2 {
  /// Name of the WAF rule group.
  ///
  /// At least one of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`metricName`" pulumi-lang-dotnet="`MetricName`" pulumi-lang-go="`metricName`" pulumi-lang-python="`metric_name`" pulumi-lang-yaml="`metricName`" pulumi-lang-java="`metricName`">`metric_name`</span> must be configured.
  final Input<String>? metricName;

  /// Name of the WAF rule group.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetSubscribedRuleGroupArgs2({
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

  factory GetSubscribedRuleGroupArgs2.fromMap(Map<String, dynamic> map) {
    return GetSubscribedRuleGroupArgs2(
      metricName: Input.asOptionalInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
