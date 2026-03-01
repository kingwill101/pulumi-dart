// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_custom_response_body.dart';
import 'rule_group_rule.dart';
import 'rule_group_visibility_config.dart';

/// Input properties used for looking up and filtering RuleGroup resources.
class RuleGroupState {
  /// The ARN of the WAF rule group.
  final pulumi.Input<String>? arn;
  /// The web ACL capacity units (WCUs) required for this rule group. See [here](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html#API_CreateRuleGroup_RequestSyntax) for general information and [here](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statements-list.html) for capacity specific information.
  final pulumi.Input<int>? capacity;
  /// Defines custom response bodies that can be referenced by `custom_response` actions. See Custom Response Body below for details.
  final pulumi.Input<List<RuleGroupCustomResponseBody>>? customResponseBodies;
  /// A friendly description of the rule group.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? lockToken;
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
  final pulumi.Input<String>? scope;
  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  final pulumi.Input<RuleGroupVisibilityConfig>? visibilityConfig;

  /// Creates a new [RuleGroupState].
  /// [arn] The ARN of the WAF rule group.
  /// [capacity] The web ACL capacity units (WCUs) required for this rule group. See [here](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html#API_CreateRuleGroup_RequestSyntax) for general information and [here](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statements-list.html) for capacity specific information.
  /// [customResponseBodies] Defines custom response bodies that can be referenced by `custom_response` actions. See Custom Response Body below for details.
  /// [description] A friendly description of the rule group.
  /// [lockToken] Optional.
  /// [name] A friendly name of the rule group.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] The rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See Rules below for details.
  /// [rulesJson] Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing rule group into a configuration with `rules_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html) for the JSON structure.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  /// [tags] An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [visibilityConfig] Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  RuleGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? capacity,
    pulumi.Output<List<RuleGroupCustomResponseBody>>? customResponseBodies,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lockToken,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<List<RuleGroupRule>>? rules,
    pulumi.Output<String>? rulesJson,
    pulumi.Output<String>? scope,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<RuleGroupVisibilityConfig>? visibilityConfig,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      customResponseBodies = pulumi.Input.asOptionalInput<List<RuleGroupCustomResponseBody>>(customResponseBodies),
      description = pulumi.Input.asOptionalInput<String>(description),
      lockToken = pulumi.Input.asOptionalInput<String>(lockToken),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<RuleGroupRule>>(rules),
      rulesJson = pulumi.Input.asOptionalInput<String>(rulesJson),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      visibilityConfig = pulumi.Input.asOptionalInput<RuleGroupVisibilityConfig>(visibilityConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacity': ?capacity,
      'customResponseBodies': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupCustomResponseBody>, List<Map<String, dynamic>>>(customResponseBodies, (value) => pulumi.Input.encodeList<RuleGroupCustomResponseBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'lockToken': ?lockToken,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RuleGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rulesJson': ?rulesJson,
      'scope': ?scope,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'visibilityConfig': ?pulumi.Input.mapOptionalInputValue<RuleGroupVisibilityConfig, Map<String, dynamic>>(visibilityConfig, (value) => value.toMap()),
    };
  }

  factory RuleGroupState.fromMap(Map<String, dynamic> map) {
    return RuleGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      customResponseBodies: map['customResponseBodies'] == null ? null : pulumi.Output.create<List<RuleGroupCustomResponseBody>>(pulumi.Input.decodeList<RuleGroupCustomResponseBody>(map['customResponseBodies'], (value) => RuleGroupCustomResponseBody.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lockToken: map['lockToken'] == null ? null : pulumi.Output.create<String>(map['lockToken'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<RuleGroupRule>>(pulumi.Input.decodeList<RuleGroupRule>(map['rules'], (value) => RuleGroupRule.fromMap((value as Map).cast<String, dynamic>()))),
      rulesJson: map['rulesJson'] == null ? null : pulumi.Output.create<String>(map['rulesJson'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      visibilityConfig: map['visibilityConfig'] == null ? null : pulumi.Output.create<RuleGroupVisibilityConfig>(RuleGroupVisibilityConfig.fromMap((map['visibilityConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

