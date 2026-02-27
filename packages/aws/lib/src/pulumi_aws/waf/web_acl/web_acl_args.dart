// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_default_action/web_acl_default_action.dart';
import '../web_acl_logging_configuration/web_acl_logging_configuration.dart';
import '../web_acl_rule/web_acl_rule.dart';

/// The set of arguments for WebAcl.
class WebAclArgs {
  /// Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. Detailed below.
  final pulumi.Input<WebAclDefaultAction> defaultAction;

  /// Configuration block to enable WAF logging. Detailed below.
  final pulumi.Input<WebAclLoggingConfiguration>? loggingConfiguration;

  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  final pulumi.Input<String> metricName;

  /// The name or description of the web ACL.
  final pulumi.Input<String>? name;

  /// Configuration blocks containing rules to associate with the web ACL and the settings for each rule. Detailed below.
  final pulumi.Input<List<WebAclRule>>? rules;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  WebAclArgs({
    required this.defaultAction,
    this.loggingConfiguration,
    required this.metricName,
    this.name,
    this.rules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultAction'] =
        pulumi.Input.mapInputValue<WebAclDefaultAction, Map<String, dynamic>>(
            defaultAction, (value) => value.toMap());
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              WebAclLoggingConfiguration, Map<String, dynamic>>(
          loggingConfigurationValue, (value) => value.toMap());
    }
    map['metricName'] = metricName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<List<WebAclRule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<WebAclRule, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory WebAclArgs.fromMap(Map<String, dynamic> map) {
    return WebAclArgs(
      defaultAction:
          pulumi.Input.asInput<WebAclDefaultAction>(map['defaultAction']),
      loggingConfiguration:
          pulumi.Input.asOptionalInput<WebAclLoggingConfiguration>(
              map['loggingConfiguration']),
      metricName: pulumi.Input.asInput<String>(map['metricName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      rules: pulumi.Input.asOptionalInput<List<WebAclRule>>(map['rules']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
