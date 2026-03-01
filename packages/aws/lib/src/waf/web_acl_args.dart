// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_default_action.dart';
import 'web_acl_logging_configuration.dart';
import 'web_acl_rule.dart';

/// {@template pulumi_waf_web_acl_web_acl_args_doc}
/// The set of arguments for WebAcl.
/// {@endtemplate}
/// {@macro pulumi_waf_web_acl_web_acl_args_doc}
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

  /// Creates a new [WebAclArgs].
  /// [defaultAction] Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. Detailed below.
  /// [loggingConfiguration] Configuration block to enable WAF logging. Detailed below.
  /// [metricName] The name or description for the Amazon CloudWatch metric of this web ACL.
  /// [name] The name or description of the web ACL.
  /// [rules] Configuration blocks containing rules to associate with the web ACL and the settings for each rule. Detailed below.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  WebAclArgs({
    required WebAclDefaultAction defaultAction,
    WebAclLoggingConfiguration? loggingConfiguration,
    required String metricName,
    String? name,
    List<WebAclRule>? rules,
    Map<String, String>? tags,
  }) : defaultAction = pulumi.Input.asInput<WebAclDefaultAction>(defaultAction),
       loggingConfiguration =
           pulumi.Input.asOptionalInput<WebAclLoggingConfiguration>(
             loggingConfiguration,
           ),
       metricName = pulumi.Input.asInput<String>(metricName),
       name = pulumi.Input.asOptionalInput<String>(name),
       rules = pulumi.Input.asOptionalInput<List<WebAclRule>>(rules),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction':
          pulumi.Input.mapInputValue<WebAclDefaultAction, Map<String, dynamic>>(
            defaultAction,
            (value) => value.toMap(),
          ),
      'loggingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclLoggingConfiguration,
            Map<String, dynamic>
          >(loggingConfiguration, (value) => value.toMap()),
      'metricName': metricName,
      'name': ?name,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<WebAclRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<WebAclRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
    };
  }

  factory WebAclArgs.fromMap(Map<String, dynamic> map) {
    return WebAclArgs(
      defaultAction: WebAclDefaultAction.fromMap(
        (map['defaultAction'] as Map).cast<String, dynamic>(),
      ),
      loggingConfiguration: map['loggingConfiguration'] == null
          ? null
          : WebAclLoggingConfiguration.fromMap(
              (map['loggingConfiguration'] as Map).cast<String, dynamic>(),
            ),
      metricName: map['metricName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<WebAclRule>(
              map['rules'],
              (value) =>
                  WebAclRule.fromMap((value as Map).cast<String, dynamic>()),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
