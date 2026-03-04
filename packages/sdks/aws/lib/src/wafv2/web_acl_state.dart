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

/// Input properties used for looking up and filtering WebAcl resources.
class WebAclState {
  /// The URL to use in SDK integrations with managed rule groups.
  final pulumi.Input<String>? applicationIntegrationUrl;

  /// The ARN of the WAF WebACL.
  final pulumi.Input<String>? arn;

  /// Specifies custom configurations for the associations between the web ACL and protected resources. See `association_config` below for details.
  final pulumi.Input<WebAclAssociationConfig>? associationConfig;

  /// Web ACL capacity units (WCUs) currently being used by this web ACL.
  final pulumi.Input<int>? capacity;

  /// Specifies how AWS WAF should handle CAPTCHA evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `captcha_config` below for details.
  final pulumi.Input<WebAclCaptchaConfig>? captchaConfig;

  /// Specifies how AWS WAF should handle Challenge evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `challenge_config` below for details.
  final pulumi.Input<WebAclChallengeConfig>? challengeConfig;

  /// Defines custom response bodies that can be referenced by `custom_response` actions. See `custom_response_body` below for details.
  final pulumi.Input<List<WebAclCustomResponseBody>>? customResponseBodies;

  /// Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. See `data_protection_config` below for details.
  final pulumi.Input<WebAclDataProtectionConfig>? dataProtectionConfig;

  /// Action to perform if none of the `rules` contained in the WebACL match. See `default_action` below for details.
  final pulumi.Input<WebAclDefaultAction>? defaultAction;

  /// Friendly description of the WebACL.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? lockToken;

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
  final pulumi.Input<String>? scope;

  /// Map of key-value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Specifies the domains that AWS WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When AWS WAF provides a token, it uses the domain of the AWS resource that the web ACL is protecting. If you don't specify a list of token domains, AWS WAF accepts tokens only for the domain of the protected resource. With a token domain list, AWS WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.
  final pulumi.Input<List<String>>? tokenDomains;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  final pulumi.Input<WebAclVisibilityConfig>? visibilityConfig;

  /// Creates a new [WebAclState].
  /// [applicationIntegrationUrl] The URL to use in SDK integrations with managed rule groups.
  /// [arn] The ARN of the WAF WebACL.
  /// [associationConfig] Specifies custom configurations for the associations between the web ACL and protected resources. See `association_config` below for details.
  /// [capacity] Web ACL capacity units (WCUs) currently being used by this web ACL.
  /// [captchaConfig] Specifies how AWS WAF should handle CAPTCHA evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `captcha_config` below for details.
  /// [challengeConfig] Specifies how AWS WAF should handle Challenge evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `challenge_config` below for details.
  /// [customResponseBodies] Defines custom response bodies that can be referenced by `custom_response` actions. See `custom_response_body` below for details.
  /// [dataProtectionConfig] Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. See `data_protection_config` below for details.
  /// [defaultAction] Action to perform if none of the `rules` contained in the WebACL match. See `default_action` below for details.
  /// [description] Friendly description of the WebACL.
  /// [lockToken] Optional.
  /// [name] Friendly name of the WebACL. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleJson] Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing web ACL into a configuration with `rule_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateWebACL.html) for the JSON structure.
  /// [rules] Rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See `rule` below for details.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  /// [tags] Map of key-value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tokenDomains] Specifies the domains that AWS WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When AWS WAF provides a token, it uses the domain of the AWS resource that the web ACL is protecting. If you don't specify a list of token domains, AWS WAF accepts tokens only for the domain of the protected resource. With a token domain list, AWS WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.
  /// [visibilityConfig] Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  WebAclState({
    this.applicationIntegrationUrl,
    this.arn,
    this.associationConfig,
    this.capacity,
    this.captchaConfig,
    this.challengeConfig,
    this.customResponseBodies,
    this.dataProtectionConfig,
    this.defaultAction,
    this.description,
    this.lockToken,
    this.name,
    this.namePrefix,
    this.region,
    this.ruleJson,
    this.rules,
    this.scope,
    this.tags,
    this.tagsAll,
    this.tokenDomains,
    this.visibilityConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationIntegrationUrl': ?applicationIntegrationUrl,
      'arn': ?arn,
      'associationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclAssociationConfig,
            Map<String, dynamic>
          >(associationConfig, (value) => value.toMap()),
      'capacity': ?capacity,
      'captchaConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclCaptchaConfig,
            Map<String, dynamic>
          >(captchaConfig, (value) => value.toMap()),
      'challengeConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclChallengeConfig,
            Map<String, dynamic>
          >(challengeConfig, (value) => value.toMap()),
      'customResponseBodies':
          ?pulumi.Input.mapOptionalInputValue<
            List<WebAclCustomResponseBody>,
            List<Map<String, dynamic>>
          >(
            customResponseBodies,
            (value) =>
                pulumi.Input.encodeList<
                  WebAclCustomResponseBody,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dataProtectionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclDataProtectionConfig,
            Map<String, dynamic>
          >(dataProtectionConfig, (value) => value.toMap()),
      'defaultAction':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclDefaultAction,
            Map<String, dynamic>
          >(defaultAction, (value) => value.toMap()),
      'description': ?description,
      'lockToken': ?lockToken,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'ruleJson': ?ruleJson,
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
      'scope': ?scope,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tokenDomains': ?tokenDomains,
      'visibilityConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclVisibilityConfig,
            Map<String, dynamic>
          >(visibilityConfig, (value) => value.toMap()),
    };
  }

  factory WebAclState.fromMap(Map<String, dynamic> map) {
    return WebAclState(
      applicationIntegrationUrl: (() {
        final guardedValue = map['applicationIntegrationUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associationConfig: (() {
        final guardedValue = map['associationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclAssociationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      captchaConfig: (() {
        final guardedValue = map['captchaConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclCaptchaConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      challengeConfig: (() {
        final guardedValue = map['challengeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclChallengeConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customResponseBodies: (() {
        final guardedValue = map['customResponseBodies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WebAclCustomResponseBody>(
            guardedValue,
            (value) => WebAclCustomResponseBody.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dataProtectionConfig: (() {
        final guardedValue = map['dataProtectionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclDataProtectionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultAction: (() {
        final guardedValue = map['defaultAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclDefaultAction.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lockToken: (() {
        final guardedValue = map['lockToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleJson: (() {
        final guardedValue = map['ruleJson'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WebAclRule>(
            guardedValue,
            (value) =>
                WebAclRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tokenDomains: (() {
        final guardedValue = map['tokenDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      visibilityConfig: (() {
        final guardedValue = map['visibilityConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclVisibilityConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
