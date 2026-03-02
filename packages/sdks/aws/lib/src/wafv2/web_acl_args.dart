// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_association_config.dart';
import 'web_acl_captcha_config.dart';
import 'web_acl_challenge_config.dart';
import 'web_acl_custom_response_body.dart';
import 'web_acl_data_protection_config.dart';
import 'web_acl_default_action.dart';
import 'web_acl_rule.dart';
import 'web_acl_visibility_config.dart';

/// {@template pulumi_wafv2_web_acl_web_acl_args_doc}
/// The set of arguments for WebAcl.
/// {@endtemplate}
/// {@macro pulumi_wafv2_web_acl_web_acl_args_doc}
class WebAclArgs {
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
  final pulumi.Input<WebAclDefaultAction> defaultAction;
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
  final pulumi.Input<List<WebAclRule>>? rules;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final pulumi.Input<String> scope;
  /// Map of key-value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the domains that AWS WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When AWS WAF provides a token, it uses the domain of the AWS resource that the web ACL is protecting. If you don't specify a list of token domains, AWS WAF accepts tokens only for the domain of the protected resource. With a token domain list, AWS WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.
  final pulumi.Input<List<String>>? tokenDomains;
  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  final pulumi.Input<WebAclVisibilityConfig> visibilityConfig;

  /// Creates a new [WebAclArgs].
  /// [associationConfig] Specifies custom configurations for the associations between the web ACL and protected resources. See `association_config` below for details.
  /// [captchaConfig] Specifies how AWS WAF should handle CAPTCHA evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `captcha_config` below for details.
  /// [challengeConfig] Specifies how AWS WAF should handle Challenge evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `challenge_config` below for details.
  /// [customResponseBodies] Defines custom response bodies that can be referenced by `custom_response` actions. See `custom_response_body` below for details.
  /// [dataProtectionConfig] Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. See `data_protection_config` below for details.
  /// [defaultAction] Action to perform if none of the `rules` contained in the WebACL match. See `default_action` below for details.
  /// [description] Friendly description of the WebACL.
  /// [name] Friendly name of the WebACL. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleJson] Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing web ACL into a configuration with `rule_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateWebACL.html) for the JSON structure.
  /// [rules] Rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See `rule` below for details.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  /// [tags] Map of key-value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tokenDomains] Specifies the domains that AWS WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When AWS WAF provides a token, it uses the domain of the AWS resource that the web ACL is protecting. If you don't specify a list of token domains, AWS WAF accepts tokens only for the domain of the protected resource. With a token domain list, AWS WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.
  /// [visibilityConfig] Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  WebAclArgs({
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
    return <String, dynamic>{
      'associationConfig': ?pulumi.Input.mapOptionalInputValue<WebAclAssociationConfig, Map<String, dynamic>>(associationConfig, (value) => value.toMap()),
      'captchaConfig': ?pulumi.Input.mapOptionalInputValue<WebAclCaptchaConfig, Map<String, dynamic>>(captchaConfig, (value) => value.toMap()),
      'challengeConfig': ?pulumi.Input.mapOptionalInputValue<WebAclChallengeConfig, Map<String, dynamic>>(challengeConfig, (value) => value.toMap()),
      'customResponseBodies': ?pulumi.Input.mapOptionalInputValue<List<WebAclCustomResponseBody>, List<Map<String, dynamic>>>(customResponseBodies, (value) => pulumi.Input.encodeList<WebAclCustomResponseBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataProtectionConfig': ?pulumi.Input.mapOptionalInputValue<WebAclDataProtectionConfig, Map<String, dynamic>>(dataProtectionConfig, (value) => value.toMap()),
      'defaultAction': pulumi.Input.mapInputValue<WebAclDefaultAction, Map<String, dynamic>>(defaultAction, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'ruleJson': ?ruleJson,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<WebAclRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<WebAclRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
      'tags': ?tags,
      'tokenDomains': ?tokenDomains,
      'visibilityConfig': pulumi.Input.mapInputValue<WebAclVisibilityConfig, Map<String, dynamic>>(visibilityConfig, (value) => value.toMap()),
    };
  }

  factory WebAclArgs.fromMap(Map<String, dynamic> map) {
    return WebAclArgs(
      associationConfig: map['associationConfig'] == null ? null : ((WebAclAssociationConfig.fromMap((map['associationConfig']! as Map).cast<String, dynamic>())).input()).input(),
      captchaConfig: map['captchaConfig'] == null ? null : ((WebAclCaptchaConfig.fromMap((map['captchaConfig']! as Map).cast<String, dynamic>())).input()).input(),
      challengeConfig: map['challengeConfig'] == null ? null : ((WebAclChallengeConfig.fromMap((map['challengeConfig']! as Map).cast<String, dynamic>())).input()).input(),
      customResponseBodies: map['customResponseBodies'] == null ? null : ((pulumi.Input.decodeList<WebAclCustomResponseBody>(map['customResponseBodies']!, (value) => WebAclCustomResponseBody.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      dataProtectionConfig: map['dataProtectionConfig'] == null ? null : ((WebAclDataProtectionConfig.fromMap((map['dataProtectionConfig']! as Map).cast<String, dynamic>())).input()).input(),
      defaultAction: (WebAclDefaultAction.fromMap((map['defaultAction']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      ruleJson: map['ruleJson'] == null ? null : ((map['ruleJson'] as String).input()).input(),
      rules: map['rules'] == null ? null : ((pulumi.Input.decodeList<WebAclRule>(map['rules']!, (value) => WebAclRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      scope: (map['scope'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tokenDomains: map['tokenDomains'] == null ? null : (((map['tokenDomains'] as List).cast<String>()).input()).input(),
      visibilityConfig: (WebAclVisibilityConfig.fromMap((map['visibilityConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

