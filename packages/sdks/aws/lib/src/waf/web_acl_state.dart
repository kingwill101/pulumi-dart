// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_default_action.dart';
import 'web_acl_logging_configuration.dart';
import 'web_acl_rule.dart';

/// Input properties used for looking up and filtering WebAcl resources.
class WebAclState {
  /// The ARN of the WAF WebACL.
  final pulumi.Input<String>? arn;
  /// Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. Detailed below.
  final pulumi.Input<WebAclDefaultAction>? defaultAction;
  /// Configuration block to enable WAF logging. Detailed below.
  final pulumi.Input<WebAclLoggingConfiguration>? loggingConfiguration;
  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  final pulumi.Input<String>? metricName;
  /// The name or description of the web ACL.
  final pulumi.Input<String>? name;
  /// Configuration blocks containing rules to associate with the web ACL and the settings for each rule. Detailed below.
  final pulumi.Input<List<WebAclRule>>? rules;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [WebAclState].
  /// [arn] The ARN of the WAF WebACL.
  /// [defaultAction] Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. Detailed below.
  /// [loggingConfiguration] Configuration block to enable WAF logging. Detailed below.
  /// [metricName] The name or description for the Amazon CloudWatch metric of this web ACL.
  /// [name] The name or description of the web ACL.
  /// [rules] Configuration blocks containing rules to associate with the web ACL and the settings for each rule. Detailed below.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  WebAclState({
    this.arn,
    this.defaultAction,
    this.loggingConfiguration,
    this.metricName,
    this.name,
    this.rules,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultAction': ?pulumi.Input.mapOptionalInputValue<WebAclDefaultAction, Map<String, dynamic>>(defaultAction, (value) => value.toMap()),
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<WebAclLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'metricName': ?metricName,
      'name': ?name,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<WebAclRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<WebAclRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory WebAclState.fromMap(Map<String, dynamic> map) {
    return WebAclState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      defaultAction: map['defaultAction'] == null ? null : (WebAclDefaultAction.fromMap((map['defaultAction'] as Map).cast<String, dynamic>())).input(),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : (WebAclLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())).input(),
      metricName: map['metricName'] == null ? null : (map['metricName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<WebAclRule>(map['rules'], (value) => WebAclRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

