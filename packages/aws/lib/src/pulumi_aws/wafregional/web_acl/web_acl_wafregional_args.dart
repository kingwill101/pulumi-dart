// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_default_action/web_acl_default_action_wafregional.dart';
import '../web_acl_logging_configuration/web_acl_logging_configuration_wafregional.dart';
import '../web_acl_rule/web_acl_rule_wafregional.dart';

/// The set of arguments for WebAcl.
class WebAclWafregionalArgs {
  /// The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
  final pulumi.Input<WebAclDefaultActionWafregional> defaultAction;

  /// Configuration block to enable WAF logging. Detailed below.
  final pulumi.Input<WebAclLoggingConfigurationWafregional>?
      loggingConfiguration;

  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  final pulumi.Input<String> metricName;

  /// The name or description of the web ACL.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Set of configuration blocks containing rules for the web ACL. Detailed below.
  final pulumi.Input<List<WebAclRuleWafregional>>? rules;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  WebAclWafregionalArgs({
    required this.defaultAction,
    this.loggingConfiguration,
    required this.metricName,
    this.name,
    this.region,
    this.rules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultAction'] = pulumi.Input.mapInputValue<
        WebAclDefaultActionWafregional,
        Map<String, dynamic>>(defaultAction, (value) => value.toMap());
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              WebAclLoggingConfigurationWafregional, Map<String, dynamic>>(
          loggingConfigurationValue, (value) => value.toMap());
    }
    map['metricName'] = metricName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<
              List<WebAclRuleWafregional>, List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<WebAclRuleWafregional,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory WebAclWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return WebAclWafregionalArgs(
      defaultAction: pulumi.Input.asInput<WebAclDefaultActionWafregional>(
          map['defaultAction']),
      loggingConfiguration:
          pulumi.Input.asOptionalInput<WebAclLoggingConfigurationWafregional>(
              map['loggingConfiguration']),
      metricName: pulumi.Input.asInput<String>(map['metricName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rules: pulumi.Input.asOptionalInput<List<WebAclRuleWafregional>>(
          map['rules']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
