import 'package:pulumi/pulumi.dart';
import '../web_acl_association_config/web_acl_association_config.dart';
import '../web_acl_captcha_config/web_acl_captcha_config.dart';
import '../web_acl_challenge_config/web_acl_challenge_config.dart';
import '../web_acl_custom_response_body/web_acl_custom_response_body.dart';
import '../web_acl_data_protection_config/web_acl_data_protection_config.dart';
import '../web_acl_default_action/web_acl_default_action3.dart';
import '../web_acl_rule/web_acl_rule3.dart';
import '../web_acl_visibility_config/web_acl_visibility_config.dart';
import 'web_acl_args3.dart';

/// Creates a WAFv2 Web ACL resource.
///
/// > **Note** In <span pulumi-lang-nodejs="`fieldToMatch`" pulumi-lang-dotnet="`FieldToMatch`" pulumi-lang-go="`fieldToMatch`" pulumi-lang-python="`field_to_match`" pulumi-lang-yaml="`fieldToMatch`" pulumi-lang-java="`fieldToMatch`">`field_to_match`</span> blocks, *e.g.*, in <span pulumi-lang-nodejs="`byteMatchStatement`" pulumi-lang-dotnet="`ByteMatchStatement`" pulumi-lang-go="`byteMatchStatement`" pulumi-lang-python="`byte_match_statement`" pulumi-lang-yaml="`byteMatchStatement`" pulumi-lang-java="`byteMatchStatement`">`byte_match_statement`</span>, the <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> block includes an optional argument <span pulumi-lang-nodejs="`oversizeHandling`" pulumi-lang-dotnet="`OversizeHandling`" pulumi-lang-go="`oversizeHandling`" pulumi-lang-python="`oversize_handling`" pulumi-lang-yaml="`oversizeHandling`" pulumi-lang-java="`oversizeHandling`">`oversize_handling`</span>. AWS indicates this argument will be required starting February 2023. To avoid configurations breaking when that change happens, treat the <span pulumi-lang-nodejs="`oversizeHandling`" pulumi-lang-dotnet="`OversizeHandling`" pulumi-lang-go="`oversizeHandling`" pulumi-lang-python="`oversize_handling`" pulumi-lang-yaml="`oversizeHandling`" pulumi-lang-java="`oversizeHandling`">`oversize_handling`</span> argument as **required** as soon as possible.
///
/// !> **Warning:** If you use the <span pulumi-lang-nodejs="`aws.wafv2.WebAclRuleGroupAssociation`" pulumi-lang-dotnet="`aws.wafv2.WebAclRuleGroupAssociation`" pulumi-lang-go="`wafv2.WebAclRuleGroupAssociation`" pulumi-lang-python="`wafv2.WebAclRuleGroupAssociation`" pulumi-lang-yaml="`aws.wafv2.WebAclRuleGroupAssociation`" pulumi-lang-java="`aws.wafv2.WebAclRuleGroupAssociation`">`aws.wafv2.WebAclRuleGroupAssociation`</span> resource to associate rule groups with this Web ACL, you must add `lifecycle {<span pulumi-lang-nodejs=" ignoreChanges " pulumi-lang-dotnet=" IgnoreChanges " pulumi-lang-go=" ignoreChanges " pulumi-lang-python=" ignore_changes " pulumi-lang-yaml=" ignoreChanges " pulumi-lang-java=" ignoreChanges "> ignore_changes </span>= [rule] }` to this resource to prevent configuration drift. The association resource modifies the Web ACL's rules outside of this resource's direct management.
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Web ACLs using `ID/Name/Scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAcl:WebAcl example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc/example/REGIONAL
/// ```
class WebAcl3 extends CustomResource {
  /// The URL to use in SDK integrations with managed rule groups.
  late final Output<String> applicationIntegrationUrl;

  /// The ARN of the WAF WebACL.
  late final Output<String> arn;

  /// Specifies custom configurations for the associations between the web ACL and protected resources. See <span pulumi-lang-nodejs="`associationConfig`" pulumi-lang-dotnet="`AssociationConfig`" pulumi-lang-go="`associationConfig`" pulumi-lang-python="`association_config`" pulumi-lang-yaml="`associationConfig`" pulumi-lang-java="`associationConfig`">`association_config`</span> below for details.
  late final Output<WebAclAssociationConfig?> associationConfig;

  /// Web ACL capacity units (WCUs) currently being used by this web ACL.
  late final Output<int> capacity;

  /// Specifies how AWS WAF should handle CAPTCHA evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See <span pulumi-lang-nodejs="`captchaConfig`" pulumi-lang-dotnet="`CaptchaConfig`" pulumi-lang-go="`captchaConfig`" pulumi-lang-python="`captcha_config`" pulumi-lang-yaml="`captchaConfig`" pulumi-lang-java="`captchaConfig`">`captcha_config`</span> below for details.
  late final Output<WebAclCaptchaConfig?> captchaConfig;

  /// Specifies how AWS WAF should handle Challenge evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See <span pulumi-lang-nodejs="`challengeConfig`" pulumi-lang-dotnet="`ChallengeConfig`" pulumi-lang-go="`challengeConfig`" pulumi-lang-python="`challenge_config`" pulumi-lang-yaml="`challengeConfig`" pulumi-lang-java="`challengeConfig`">`challenge_config`</span> below for details.
  late final Output<WebAclChallengeConfig?> challengeConfig;

  /// Defines custom response bodies that can be referenced by <span pulumi-lang-nodejs="`customResponse`" pulumi-lang-dotnet="`CustomResponse`" pulumi-lang-go="`customResponse`" pulumi-lang-python="`custom_response`" pulumi-lang-yaml="`customResponse`" pulumi-lang-java="`customResponse`">`custom_response`</span> actions. See <span pulumi-lang-nodejs="`customResponseBody`" pulumi-lang-dotnet="`CustomResponseBody`" pulumi-lang-go="`customResponseBody`" pulumi-lang-python="`custom_response_body`" pulumi-lang-yaml="`customResponseBody`" pulumi-lang-java="`customResponseBody`">`custom_response_body`</span> below for details.
  late final Output<List<WebAclCustomResponseBody>?> customResponseBodies;

  /// Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. See <span pulumi-lang-nodejs="`dataProtectionConfig`" pulumi-lang-dotnet="`DataProtectionConfig`" pulumi-lang-go="`dataProtectionConfig`" pulumi-lang-python="`data_protection_config`" pulumi-lang-yaml="`dataProtectionConfig`" pulumi-lang-java="`dataProtectionConfig`">`data_protection_config`</span> below for details.
  late final Output<WebAclDataProtectionConfig?> dataProtectionConfig;

  /// Action to perform if none of the <span pulumi-lang-nodejs="`rules`" pulumi-lang-dotnet="`Rules`" pulumi-lang-go="`rules`" pulumi-lang-python="`rules`" pulumi-lang-yaml="`rules`" pulumi-lang-java="`rules`">`rules`</span> contained in the WebACL match. See <span pulumi-lang-nodejs="`defaultAction`" pulumi-lang-dotnet="`DefaultAction`" pulumi-lang-go="`defaultAction`" pulumi-lang-python="`default_action`" pulumi-lang-yaml="`defaultAction`" pulumi-lang-java="`defaultAction`">`default_action`</span> below for details.
  late final Output<WebAclDefaultAction3> defaultAction;

  /// Friendly description of the WebACL.
  late final Output<String?> description;
  late final Output<String> lockToken;

  /// Friendly name of the WebACL. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Raw JSON string to allow more than three nested statements. Conflicts with <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span>, you will be foregoing drift detection. Additionally, importing an existing web ACL into a configuration with <span pulumi-lang-nodejs="`ruleJson`" pulumi-lang-dotnet="`RuleJson`" pulumi-lang-go="`ruleJson`" pulumi-lang-python="`rule_json`" pulumi-lang-yaml="`ruleJson`" pulumi-lang-java="`ruleJson`">`rule_json`</span> set will result in a one time in-place update as the remote rule configuration is initially written to the <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateWebACL.html) for the JSON structure.
  late final Output<String?> ruleJson;

  /// Rule blocks used to identify the web requests that you want to <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span>, <span pulumi-lang-nodejs="`block`" pulumi-lang-dotnet="`Block`" pulumi-lang-go="`block`" pulumi-lang-python="`block`" pulumi-lang-yaml="`block`" pulumi-lang-java="`block`">`block`</span>, or <span pulumi-lang-nodejs="`count`" pulumi-lang-dotnet="`Count`" pulumi-lang-go="`count`" pulumi-lang-python="`count`" pulumi-lang-yaml="`count`" pulumi-lang-java="`count`">`count`</span>. See <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> below for details.
  late final Output<List<WebAclRule3>?> rules;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  late final Output<String> scope;

  /// Map of key-value pairs to associate with the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specifies the domains that AWS WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When AWS WAF provides a token, it uses the domain of the AWS resource that the web ACL is protecting. If you don't specify a list of token domains, AWS WAF accepts tokens only for the domain of the protected resource. With a token domain list, AWS WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.
  late final Output<List<String>?> tokenDomains;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See <span pulumi-lang-nodejs="`visibilityConfig`" pulumi-lang-dotnet="`VisibilityConfig`" pulumi-lang-go="`visibilityConfig`" pulumi-lang-python="`visibility_config`" pulumi-lang-yaml="`visibilityConfig`" pulumi-lang-java="`visibilityConfig`">`visibility_config`</span> below for details.
  late final Output<WebAclVisibilityConfig> visibilityConfig;

  WebAcl3(
    String name, {
    WebAclArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAcl:WebAcl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationIntegrationUrl =
        registerOutput<String>('applicationIntegrationUrl');
    this.arn = registerOutput<String>('arn');
    this.associationConfig =
        registerOutput<WebAclAssociationConfig?>('associationConfig');
    this.capacity = registerOutput<int>('capacity');
    this.captchaConfig = registerOutput<WebAclCaptchaConfig?>('captchaConfig');
    this.challengeConfig =
        registerOutput<WebAclChallengeConfig?>('challengeConfig');
    this.customResponseBodies =
        registerOutput<List<WebAclCustomResponseBody>?>('customResponseBodies');
    this.dataProtectionConfig =
        registerOutput<WebAclDataProtectionConfig?>('dataProtectionConfig');
    this.defaultAction = registerOutput<WebAclDefaultAction3>('defaultAction');
    this.description = registerOutput<String?>('description');
    this.lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.ruleJson = registerOutput<String?>('ruleJson');
    this.rules = registerOutput<List<WebAclRule3>?>('rules');
    this.scope = registerOutput<String>('scope');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tokenDomains = registerOutput<List<String>?>('tokenDomains');
    this.visibilityConfig =
        registerOutput<WebAclVisibilityConfig>('visibilityConfig');
  }
}
