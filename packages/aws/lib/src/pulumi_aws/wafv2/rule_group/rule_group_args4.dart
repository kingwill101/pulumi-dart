// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_custom_response_body/rule_group_custom_response_body.dart';
import '../rule_group_rule/rule_group_rule.dart';
import '../rule_group_visibility_config/rule_group_visibility_config.dart';

/// The set of arguments for RuleGroup.
class RuleGroupArgs4 {
  /// The web ACL capacity units (WCUs) required for this rule group. See [here](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html#API_CreateRuleGroup_RequestSyntax) for general information and [here](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statements-list.html) for capacity specific information.
  final Input<int> capacity;

  /// Defines custom response bodies that can be referenced by `custom_response` actions. See Custom Response Body below for details.
  final Input<List<RuleGroupCustomResponseBody>>? customResponseBodies;

  /// A friendly description of the rule group.
  final Input<String>? description;

  /// A friendly name of the rule group.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See Rules below for details.
  final Input<List<RuleGroupRule>>? rules;

  /// Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing rule group into a configuration with `rules_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html) for the JSON structure.
  final Input<String>? rulesJson;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final Input<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  final Input<RuleGroupVisibilityConfig> visibilityConfig;

  RuleGroupArgs4({
    required this.capacity,
    this.customResponseBodies,
    this.description,
    this.name,
    this.namePrefix,
    this.region,
    this.rules,
    this.rulesJson,
    required this.scope,
    this.tags,
    required this.visibilityConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacity'] = capacity;
    final customResponseBodiesValue = customResponseBodies;
    if (customResponseBodiesValue != null) {
      map['customResponseBodies'] = Input.mapOptionalInputValue<
              List<RuleGroupCustomResponseBody>, List<Map<String, dynamic>>>(
          customResponseBodiesValue,
          (value) => Input.encodeList<RuleGroupCustomResponseBody,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<List<RuleGroupRule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<RuleGroupRule, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final rulesJsonValue = rulesJson;
    if (rulesJsonValue != null) {
      map['rulesJson'] = rulesJsonValue;
    }
    map['scope'] = scope;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['visibilityConfig'] =
        Input.mapInputValue<RuleGroupVisibilityConfig, Map<String, dynamic>>(
            visibilityConfig, (value) => value.toMap());
    return map;
  }

  factory RuleGroupArgs4.fromMap(Map<String, dynamic> map) {
    return RuleGroupArgs4(
      capacity: Input.asInput<int>(map['capacity']),
      customResponseBodies:
          Input.asOptionalInput<List<RuleGroupCustomResponseBody>>(
              map['customResponseBodies']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      rules: Input.asOptionalInput<List<RuleGroupRule>>(map['rules']),
      rulesJson: Input.asOptionalInput<String>(map['rulesJson']),
      scope: Input.asInput<String>(map['scope']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      visibilityConfig:
          Input.asInput<RuleGroupVisibilityConfig>(map['visibilityConfig']),
    );
  }
}
