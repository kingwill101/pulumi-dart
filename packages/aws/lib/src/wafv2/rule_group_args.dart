// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_custom_response_body.dart';
import 'rule_group_rule.dart';
import 'rule_group_visibility_config.dart';

/// {@template pulumi_wafv2_rule_group_rule_group_args_doc}
/// The set of arguments for RuleGroup.
/// {@endtemplate}
/// {@macro pulumi_wafv2_rule_group_rule_group_args_doc}
class RuleGroupArgs {
  /// The web ACL capacity units (WCUs) required for this rule group. See [here](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html#API_CreateRuleGroup_RequestSyntax) for general information and [here](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statements-list.html) for capacity specific information.
  final pulumi.Input<int> capacity;

  /// Defines custom response bodies that can be referenced by `custom_response` actions. See Custom Response Body below for details.
  final pulumi.Input<List<RuleGroupCustomResponseBody>>? customResponseBodies;

  /// A friendly description of the rule group.
  final pulumi.Input<String>? description;

  /// A friendly name of the rule group.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See Rules below for details.
  final pulumi.Input<List<RuleGroupRule>>? rules;

  /// Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing rule group into a configuration with `rules_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html) for the JSON structure.
  final pulumi.Input<String>? rulesJson;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final pulumi.Input<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  final pulumi.Input<RuleGroupVisibilityConfig> visibilityConfig;

  /// Creates a new [RuleGroupArgs].
  /// [capacity] The web ACL capacity units (WCUs) required for this rule group. See [here](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html#API_CreateRuleGroup_RequestSyntax) for general information and [here](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statements-list.html) for capacity specific information.
  /// [customResponseBodies] Defines custom response bodies that can be referenced by `custom_response` actions. See Custom Response Body below for details.
  /// [description] A friendly description of the rule group.
  /// [name] A friendly name of the rule group.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] The rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See Rules below for details.
  /// [rulesJson] Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing rule group into a configuration with `rules_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html) for the JSON structure.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  /// [tags] An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [visibilityConfig] Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  RuleGroupArgs({
    required int capacity,
    List<RuleGroupCustomResponseBody>? customResponseBodies,
    String? description,
    String? name,
    String? namePrefix,
    String? region,
    List<RuleGroupRule>? rules,
    String? rulesJson,
    required String scope,
    Map<String, String>? tags,
    required RuleGroupVisibilityConfig visibilityConfig,
  }) : capacity = pulumi.Input.asInput<int>(capacity),
       customResponseBodies =
           pulumi.Input.asOptionalInput<List<RuleGroupCustomResponseBody>>(
             customResponseBodies,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       region = pulumi.Input.asOptionalInput<String>(region),
       rules = pulumi.Input.asOptionalInput<List<RuleGroupRule>>(rules),
       rulesJson = pulumi.Input.asOptionalInput<String>(rulesJson),
       scope = pulumi.Input.asInput<String>(scope),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       visibilityConfig = pulumi.Input.asInput<RuleGroupVisibilityConfig>(
         visibilityConfig,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'customResponseBodies':
          ?pulumi.Input.mapOptionalInputValue<
            List<RuleGroupCustomResponseBody>,
            List<Map<String, dynamic>>
          >(
            customResponseBodies,
            (value) =>
                pulumi.Input.encodeList<
                  RuleGroupCustomResponseBody,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<RuleGroupRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<RuleGroupRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'rulesJson': ?rulesJson,
      'scope': scope,
      'tags': ?tags,
      'visibilityConfig':
          pulumi.Input.mapInputValue<
            RuleGroupVisibilityConfig,
            Map<String, dynamic>
          >(visibilityConfig, (value) => value.toMap()),
    };
  }

  factory RuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupArgs(
      capacity: map['capacity'] as int,
      customResponseBodies: map['customResponseBodies'] == null
          ? null
          : pulumi.Input.decodeList<RuleGroupCustomResponseBody>(
              map['customResponseBodies'],
              (value) => RuleGroupCustomResponseBody.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<RuleGroupRule>(
              map['rules'],
              (value) =>
                  RuleGroupRule.fromMap((value as Map).cast<String, dynamic>()),
            ),
      rulesJson: map['rulesJson'] == null ? null : map['rulesJson'] as String,
      scope: map['scope'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      visibilityConfig: RuleGroupVisibilityConfig.fromMap(
        (map['visibilityConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
