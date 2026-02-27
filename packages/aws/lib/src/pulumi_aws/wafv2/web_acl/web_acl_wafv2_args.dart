// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_association_config/web_acl_association_config.dart';
import '../web_acl_captcha_config/web_acl_captcha_config.dart';
import '../web_acl_challenge_config/web_acl_challenge_config.dart';
import '../web_acl_custom_response_body/web_acl_custom_response_body.dart';
import '../web_acl_data_protection_config/web_acl_data_protection_config.dart';
import '../web_acl_default_action/web_acl_default_action_wafv2.dart';
import '../web_acl_rule/web_acl_rule_wafv2.dart';
import '../web_acl_visibility_config/web_acl_visibility_config.dart';

/// The set of arguments for WebAcl.
class WebAclWafv2Args {
  /// Specifies custom configurations for the associations between the web ACL and protected resources. See `association_config` below for details.
  final pulumi.Input<WebAclAssociationConfig>? associationConfig;

  /// Specifies how AWS WAF should handle CAPTCHA evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `captcha_config` below for details.
  final pulumi.Input<WebAclCaptchaConfig>? captchaConfig;

  /// Specifies how AWS WAF should handle Challenge evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `challenge_config` below for details.
  final pulumi.Input<WebAclChallengeConfig>? challengeConfig;

  /// Defines custom response bodies that can be referenced by `custom_response` actions. See `custom_response_body` below for details.
  final pulumi.Input<List<WebAclCustomResponseBody>>? customResponseBodies;

  /// Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. See `data_protection_config` below for details.
  final pulumi.Input<WebAclDataProtectionConfig>? dataProtectionConfig;

  /// Action to perform if none of the `rules` contained in the WebACL match. See `default_action` below for details.
  final pulumi.Input<WebAclDefaultActionWafv2> defaultAction;

  /// Friendly description of the WebACL.
  final pulumi.Input<String>? description;

  /// Friendly name of the WebACL. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing web ACL into a configuration with `rule_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateWebACL.html) for the JSON structure.
  final pulumi.Input<String>? ruleJson;

  /// Rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See `rule` below for details.
  final pulumi.Input<List<WebAclRuleWafv2>>? rules;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final pulumi.Input<String> scope;

  /// Map of key-value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the domains that AWS WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When AWS WAF provides a token, it uses the domain of the AWS resource that the web ACL is protecting. If you don't specify a list of token domains, AWS WAF accepts tokens only for the domain of the protected resource. With a token domain list, AWS WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.
  final pulumi.Input<List<String>>? tokenDomains;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  final pulumi.Input<WebAclVisibilityConfig> visibilityConfig;

  WebAclWafv2Args({
    this.associationConfig,
    this.captchaConfig,
    this.challengeConfig,
    this.customResponseBodies,
    this.dataProtectionConfig,
    required this.defaultAction,
    this.description,
    this.name,
    this.namePrefix,
    this.region,
    this.ruleJson,
    this.rules,
    required this.scope,
    this.tags,
    this.tokenDomains,
    required this.visibilityConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final associationConfigValue = associationConfig;
    if (associationConfigValue != null) {
      map['associationConfig'] = pulumi.Input.mapOptionalInputValue<
              WebAclAssociationConfig, Map<String, dynamic>>(
          associationConfigValue, (value) => value.toMap());
    }
    final captchaConfigValue = captchaConfig;
    if (captchaConfigValue != null) {
      map['captchaConfig'] = pulumi.Input.mapOptionalInputValue<
          WebAclCaptchaConfig,
          Map<String, dynamic>>(captchaConfigValue, (value) => value.toMap());
    }
    final challengeConfigValue = challengeConfig;
    if (challengeConfigValue != null) {
      map['challengeConfig'] = pulumi.Input.mapOptionalInputValue<
          WebAclChallengeConfig,
          Map<String, dynamic>>(challengeConfigValue, (value) => value.toMap());
    }
    final customResponseBodiesValue = customResponseBodies;
    if (customResponseBodiesValue != null) {
      map['customResponseBodies'] = pulumi.Input.mapOptionalInputValue<
              List<WebAclCustomResponseBody>, List<Map<String, dynamic>>>(
          customResponseBodiesValue,
          (value) => pulumi.Input.encodeList<WebAclCustomResponseBody,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final dataProtectionConfigValue = dataProtectionConfig;
    if (dataProtectionConfigValue != null) {
      map['dataProtectionConfig'] = pulumi.Input.mapOptionalInputValue<
              WebAclDataProtectionConfig, Map<String, dynamic>>(
          dataProtectionConfigValue, (value) => value.toMap());
    }
    map['defaultAction'] = pulumi.Input.mapInputValue<WebAclDefaultActionWafv2,
        Map<String, dynamic>>(defaultAction, (value) => value.toMap());
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
    final ruleJsonValue = ruleJson;
    if (ruleJsonValue != null) {
      map['ruleJson'] = ruleJsonValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<List<WebAclRuleWafv2>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) =>
              pulumi.Input.encodeList<WebAclRuleWafv2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['scope'] = scope;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tokenDomainsValue = tokenDomains;
    if (tokenDomainsValue != null) {
      map['tokenDomains'] = tokenDomainsValue;
    }
    map['visibilityConfig'] = pulumi.Input.mapInputValue<WebAclVisibilityConfig,
        Map<String, dynamic>>(visibilityConfig, (value) => value.toMap());
    return map;
  }

  factory WebAclWafv2Args.fromMap(Map<String, dynamic> map) {
    return WebAclWafv2Args(
      associationConfig: pulumi.Input.asOptionalInput<WebAclAssociationConfig>(
          map['associationConfig']),
      captchaConfig: pulumi.Input.asOptionalInput<WebAclCaptchaConfig>(
          map['captchaConfig']),
      challengeConfig: pulumi.Input.asOptionalInput<WebAclChallengeConfig>(
          map['challengeConfig']),
      customResponseBodies:
          pulumi.Input.asOptionalInput<List<WebAclCustomResponseBody>>(
              map['customResponseBodies']),
      dataProtectionConfig:
          pulumi.Input.asOptionalInput<WebAclDataProtectionConfig>(
              map['dataProtectionConfig']),
      defaultAction:
          pulumi.Input.asInput<WebAclDefaultActionWafv2>(map['defaultAction']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleJson: pulumi.Input.asOptionalInput<String>(map['ruleJson']),
      rules: pulumi.Input.asOptionalInput<List<WebAclRuleWafv2>>(map['rules']),
      scope: pulumi.Input.asInput<String>(map['scope']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tokenDomains:
          pulumi.Input.asOptionalInput<List<String>>(map['tokenDomains']),
      visibilityConfig:
          pulumi.Input.asInput<WebAclVisibilityConfig>(map['visibilityConfig']),
    );
  }
}
