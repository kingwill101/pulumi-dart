// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_association_config/web_acl_association_config.dart';
import '../web_acl_captcha_config/web_acl_captcha_config.dart';
import '../web_acl_challenge_config/web_acl_challenge_config.dart';
import '../web_acl_custom_response_body/web_acl_custom_response_body.dart';
import '../web_acl_data_protection_config/web_acl_data_protection_config.dart';
import '../web_acl_default_action/web_acl_default_action3.dart';
import '../web_acl_rule/web_acl_rule3.dart';
import '../web_acl_visibility_config/web_acl_visibility_config.dart';

/// The set of arguments for WebAcl.
class WebAclArgs3 {
  /// Specifies custom configurations for the associations between the web ACL and protected resources. See <span pulumi-lang-nodejs="`associationConfig`" pulumi-lang-dotnet="`AssociationConfig`" pulumi-lang-go="`associationConfig`" pulumi-lang-python="`association_config`" pulumi-lang-yaml="`associationConfig`" pulumi-lang-java="`associationConfig`">`association_config`</span> below for details.
  final Input<WebAclAssociationConfig>? associationConfig;

  /// Specifies how AWS WAF should handle CAPTCHA evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See <span pulumi-lang-nodejs="`captchaConfig`" pulumi-lang-dotnet="`CaptchaConfig`" pulumi-lang-go="`captchaConfig`" pulumi-lang-python="`captcha_config`" pulumi-lang-yaml="`captchaConfig`" pulumi-lang-java="`captchaConfig`">`captcha_config`</span> below for details.
  final Input<WebAclCaptchaConfig>? captchaConfig;

  /// Specifies how AWS WAF should handle Challenge evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See <span pulumi-lang-nodejs="`challengeConfig`" pulumi-lang-dotnet="`ChallengeConfig`" pulumi-lang-go="`challengeConfig`" pulumi-lang-python="`challenge_config`" pulumi-lang-yaml="`challengeConfig`" pulumi-lang-java="`challengeConfig`">`challenge_config`</span> below for details.
  final Input<WebAclChallengeConfig>? challengeConfig;

  /// Defines custom response bodies that can be referenced by <span pulumi-lang-nodejs="`customResponse`" pulumi-lang-dotnet="`CustomResponse`" pulumi-lang-go="`customResponse`" pulumi-lang-python="`custom_response`" pulumi-lang-yaml="`customResponse`" pulumi-lang-java="`customResponse`">`custom_response`</span> actions. See <span pulumi-lang-nodejs="`customResponseBody`" pulumi-lang-dotnet="`CustomResponseBody`" pulumi-lang-go="`customResponseBody`" pulumi-lang-python="`custom_response_body`" pulumi-lang-yaml="`customResponseBody`" pulumi-lang-java="`customResponseBody`">`custom_response_body`</span> below for details.
  final Input<List<WebAclCustomResponseBody>>? customResponseBodies;

  /// Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. See <span pulumi-lang-nodejs="`dataProtectionConfig`" pulumi-lang-dotnet="`DataProtectionConfig`" pulumi-lang-go="`dataProtectionConfig`" pulumi-lang-python="`data_protection_config`" pulumi-lang-yaml="`dataProtectionConfig`" pulumi-lang-java="`dataProtectionConfig`">`data_protection_config`</span> below for details.
  final Input<WebAclDataProtectionConfig>? dataProtectionConfig;

  /// Action to perform if none of the <span pulumi-lang-nodejs="`rules`" pulumi-lang-dotnet="`Rules`" pulumi-lang-go="`rules`" pulumi-lang-python="`rules`" pulumi-lang-yaml="`rules`" pulumi-lang-java="`rules`">`rules`</span> contained in the WebACL match. See <span pulumi-lang-nodejs="`defaultAction`" pulumi-lang-dotnet="`DefaultAction`" pulumi-lang-go="`defaultAction`" pulumi-lang-python="`default_action`" pulumi-lang-yaml="`defaultAction`" pulumi-lang-java="`defaultAction`">`default_action`</span> below for details.
  final Input<WebAclDefaultAction3> defaultAction;

  /// Friendly description of the WebACL.
  final Input<String>? description;

  /// Friendly name of the WebACL. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Raw JSON string to allow more than three nested statements. Conflicts with <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span>, you will be foregoing drift detection. Additionally, importing an existing web ACL into a configuration with <span pulumi-lang-nodejs="`ruleJson`" pulumi-lang-dotnet="`RuleJson`" pulumi-lang-go="`ruleJson`" pulumi-lang-python="`rule_json`" pulumi-lang-yaml="`ruleJson`" pulumi-lang-java="`ruleJson`">`rule_json`</span> set will result in a one time in-place update as the remote rule configuration is initially written to the <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateWebACL.html) for the JSON structure.
  final Input<String>? ruleJson;

  /// Rule blocks used to identify the web requests that you want to <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span>, <span pulumi-lang-nodejs="`block`" pulumi-lang-dotnet="`Block`" pulumi-lang-go="`block`" pulumi-lang-python="`block`" pulumi-lang-yaml="`block`" pulumi-lang-java="`block`">`block`</span>, or <span pulumi-lang-nodejs="`count`" pulumi-lang-dotnet="`Count`" pulumi-lang-go="`count`" pulumi-lang-python="`count`" pulumi-lang-yaml="`count`" pulumi-lang-java="`count`">`count`</span>. See <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> below for details.
  final Input<List<WebAclRule3>>? rules;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final Input<String> scope;

  /// Map of key-value pairs to associate with the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies the domains that AWS WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When AWS WAF provides a token, it uses the domain of the AWS resource that the web ACL is protecting. If you don't specify a list of token domains, AWS WAF accepts tokens only for the domain of the protected resource. With a token domain list, AWS WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.
  final Input<List<String>>? tokenDomains;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See <span pulumi-lang-nodejs="`visibilityConfig`" pulumi-lang-dotnet="`VisibilityConfig`" pulumi-lang-go="`visibilityConfig`" pulumi-lang-python="`visibility_config`" pulumi-lang-yaml="`visibilityConfig`" pulumi-lang-java="`visibilityConfig`">`visibility_config`</span> below for details.
  final Input<WebAclVisibilityConfig> visibilityConfig;

  WebAclArgs3({
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
      map['associationConfig'] = Input.mapOptionalInputValue<
              WebAclAssociationConfig, Map<String, dynamic>>(
          associationConfigValue, (value) => value.toMap());
    }
    final captchaConfigValue = captchaConfig;
    if (captchaConfigValue != null) {
      map['captchaConfig'] = Input.mapOptionalInputValue<WebAclCaptchaConfig,
          Map<String, dynamic>>(captchaConfigValue, (value) => value.toMap());
    }
    final challengeConfigValue = challengeConfig;
    if (challengeConfigValue != null) {
      map['challengeConfig'] = Input.mapOptionalInputValue<
          WebAclChallengeConfig,
          Map<String, dynamic>>(challengeConfigValue, (value) => value.toMap());
    }
    final customResponseBodiesValue = customResponseBodies;
    if (customResponseBodiesValue != null) {
      map['customResponseBodies'] = Input.mapOptionalInputValue<
              List<WebAclCustomResponseBody>, List<Map<String, dynamic>>>(
          customResponseBodiesValue,
          (value) =>
              Input.encodeList<WebAclCustomResponseBody, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final dataProtectionConfigValue = dataProtectionConfig;
    if (dataProtectionConfigValue != null) {
      map['dataProtectionConfig'] = Input.mapOptionalInputValue<
              WebAclDataProtectionConfig, Map<String, dynamic>>(
          dataProtectionConfigValue, (value) => value.toMap());
    }
    map['defaultAction'] =
        Input.mapInputValue<WebAclDefaultAction3, Map<String, dynamic>>(
            defaultAction, (value) => value.toMap());
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
      map['rules'] = Input.mapOptionalInputValue<List<WebAclRule3>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<WebAclRule3, Map<String, dynamic>>(
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
    map['visibilityConfig'] =
        Input.mapInputValue<WebAclVisibilityConfig, Map<String, dynamic>>(
            visibilityConfig, (value) => value.toMap());
    return map;
  }

  factory WebAclArgs3.fromMap(Map<String, dynamic> map) {
    return WebAclArgs3(
      associationConfig: Input.asOptionalInput<WebAclAssociationConfig>(
          map['associationConfig']),
      captchaConfig:
          Input.asOptionalInput<WebAclCaptchaConfig>(map['captchaConfig']),
      challengeConfig:
          Input.asOptionalInput<WebAclChallengeConfig>(map['challengeConfig']),
      customResponseBodies:
          Input.asOptionalInput<List<WebAclCustomResponseBody>>(
              map['customResponseBodies']),
      dataProtectionConfig: Input.asOptionalInput<WebAclDataProtectionConfig>(
          map['dataProtectionConfig']),
      defaultAction: Input.asInput<WebAclDefaultAction3>(map['defaultAction']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleJson: Input.asOptionalInput<String>(map['ruleJson']),
      rules: Input.asOptionalInput<List<WebAclRule3>>(map['rules']),
      scope: Input.asInput<String>(map['scope']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tokenDomains: Input.asOptionalInput<List<String>>(map['tokenDomains']),
      visibilityConfig:
          Input.asInput<WebAclVisibilityConfig>(map['visibilityConfig']),
    );
  }
}
