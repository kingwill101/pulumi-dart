// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_default_action.dart';
import 'web_acl_logging_configuration.dart';
import 'web_acl_rule.dart';

/// {@template pulumi_wafregional_web_acl_web_acl_args_doc}
/// The set of arguments for WebAcl.
/// {@endtemplate}
/// {@macro pulumi_wafregional_web_acl_web_acl_args_doc}
class WebAclArgs {
  /// The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
  final pulumi.Input<WebAclDefaultAction> defaultAction;
  /// Configuration block to enable WAF logging. Detailed below.
  final pulumi.Input<WebAclLoggingConfiguration>? loggingConfiguration;
  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  final pulumi.Input<String> metricName;
  /// The name or description of the web ACL.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of configuration blocks containing rules for the web ACL. Detailed below.
  final pulumi.Input<List<WebAclRule>>? rules;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WebAclArgs].
  /// [defaultAction] The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
  /// [loggingConfiguration] Configuration block to enable WAF logging. Detailed below.
  /// [metricName] The name or description for the Amazon CloudWatch metric of this web ACL.
  /// [name] The name or description of the web ACL.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] Set of configuration blocks containing rules for the web ACL. Detailed below.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  WebAclArgs({
    required pulumi.Output<WebAclDefaultAction> defaultAction,
    pulumi.Output<WebAclLoggingConfiguration>? loggingConfiguration,
    required pulumi.Output<String> metricName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<WebAclRule>>? rules,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      defaultAction = pulumi.Input.asInput<WebAclDefaultAction>(defaultAction),
      loggingConfiguration = pulumi.Input.asOptionalInput<WebAclLoggingConfiguration>(loggingConfiguration),
      metricName = pulumi.Input.asInput<String>(metricName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<WebAclRule>>(rules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': pulumi.Input.mapInputValue<WebAclDefaultAction, Map<String, dynamic>>(defaultAction, (value) => value.toMap()),
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<WebAclLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'metricName': metricName,
      'name': ?name,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<WebAclRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<WebAclRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory WebAclArgs.fromMap(Map<String, dynamic> map) {
    return WebAclArgs(
      defaultAction: pulumi.Output.create<WebAclDefaultAction>(WebAclDefaultAction.fromMap((map['defaultAction'] as Map).cast<String, dynamic>())),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : pulumi.Output.create<WebAclLoggingConfiguration>(WebAclLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())),
      metricName: pulumi.Output.create<String>(map['metricName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<WebAclRule>>(pulumi.Input.decodeList<WebAclRule>(map['rules'], (value) => WebAclRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

