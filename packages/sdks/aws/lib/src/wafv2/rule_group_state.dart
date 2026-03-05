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
    this.arn,
    this.capacity,
    this.customResponseBodies,
    this.description,
    this.lockToken,
    this.name,
    this.namePrefix,
    this.region,
    this.rules,
    this.rulesJson,
    this.scope,
    this.tags,
    this.tagsAll,
    this.visibilityConfig,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customResponseBodies: (() { final guardedValue = map['customResponseBodies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupCustomResponseBody>(guardedValue, (value) => RuleGroupCustomResponseBody.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lockToken: (() { final guardedValue = map['lockToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRule>(guardedValue, (value) => RuleGroupRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rulesJson: (() { final guardedValue = map['rulesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      visibilityConfig: (() { final guardedValue = map['visibilityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

