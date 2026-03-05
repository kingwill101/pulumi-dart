import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_args.dart';
import 'web_acl_association_config.dart';
import 'web_acl_captcha_config.dart';
import 'web_acl_challenge_config.dart';
import 'web_acl_data_protection_config.dart';
import 'web_acl_default_action.dart';
import 'web_acl_state.dart';
import 'web_acl_visibility_config.dart';

/// Creates a WAFv2 Web ACL resource.
///
/// &gt; **Note** In `field_to_match` blocks, *e.g.*, in `byte_match_statement`, the `body` block includes an optional argument `oversize_handling`. AWS indicates this argument will be required starting February 2023. To avoid configurations breaking when that change happens, treat the `oversize_handling` argument as **required** as soon as possible.
///
/// !&gt; **Warning:** If you use the `aws.wafv2.WebAclRuleGroupAssociation` resource to associate rule groups with this Web ACL, you must add `lifecycle { ignore_changes = [rule] }` to this resource to prevent configuration drift. The association resource modifies the Web ACL's rules outside of this resource's direct management.
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Web ACLs using `ID/Name/Scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAcl:WebAcl example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc/example/REGIONAL
/// ```
class WebAcl extends pulumi.CustomResource {
  /// The URL to use in SDK integrations with managed rule groups.
  late final pulumi.Output<String> applicationIntegrationUrl;
  /// The ARN of the WAF WebACL.
  late final pulumi.Output<String> arn;
  /// Specifies custom configurations for the associations between the web ACL and protected resources. See `association_config` below for details.
  late final pulumi.Output<WebAclAssociationConfig?> associationConfig;
  /// Web ACL capacity units (WCUs) currently being used by this web ACL.
  late final pulumi.Output<int> capacity;
  /// Specifies how AWS WAF should handle CAPTCHA evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `captcha_config` below for details.
  late final pulumi.Output<WebAclCaptchaConfig?> captchaConfig;
  /// Specifies how AWS WAF should handle Challenge evaluations on the ACL level (used by [AWS Bot Control](https://docs.aws.amazon.com/waf/latest/developerguide/aws-managed-rule-groups-bot.html)). See `challenge_config` below for details.
  late final pulumi.Output<WebAclChallengeConfig?> challengeConfig;
  /// Defines custom response bodies that can be referenced by `custom_response` actions. See `custom_response_body` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> customResponseBodies;
  /// Specifies data protection to apply to the web request data for the web ACL. This is a web ACL level data protection option. See `data_protection_config` below for details.
  late final pulumi.Output<WebAclDataProtectionConfig?> dataProtectionConfig;
  /// Action to perform if none of the `rules` contained in the WebACL match. See `default_action` below for details.
  late final pulumi.Output<WebAclDefaultAction> defaultAction;
  /// Friendly description of the WebACL.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> lockToken;
  /// Friendly name of the WebACL. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing web ACL into a configuration with `rule_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateWebACL.html) for the JSON structure.
  late final pulumi.Output<String?> ruleJson;
  /// Rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See `rule` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  late final pulumi.Output<String> scope;
  /// Map of key-value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Specifies the domains that AWS WAF should accept in a web request token. This enables the use of tokens across multiple protected websites. When AWS WAF provides a token, it uses the domain of the AWS resource that the web ACL is protecting. If you don't specify a list of token domains, AWS WAF accepts tokens only for the domain of the protected resource. With a token domain list, AWS WAF accepts the resource's host domain plus all domains in the token domain list, including their prefixed subdomains.
  late final pulumi.Output<List<String>?> tokenDomains;
  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  late final pulumi.Output<WebAclVisibilityConfig> visibilityConfig;

  /// Creates a new [WebAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAcl]. {@macro pulumi_wafv2_web_acl_web_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAcl(
    String name, {
    WebAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAcl:WebAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationIntegrationUrl = registerOutput<String>('applicationIntegrationUrl');
    arn = registerOutput<String>('arn');
    associationConfig = registerOutput<WebAclAssociationConfig?>('associationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclAssociationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacity = registerOutput<int>('capacity');
    captchaConfig = registerOutput<WebAclCaptchaConfig?>('captchaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclCaptchaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    challengeConfig = registerOutput<WebAclChallengeConfig?>('challengeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclChallengeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customResponseBodies = registerOutput<List<Map<String, dynamic>>?>('customResponseBodies');
    dataProtectionConfig = registerOutput<WebAclDataProtectionConfig?>('dataProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDataProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    ruleJson = registerOutput<String?>('ruleJson');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tokenDomains = registerOutput<List<String>?>('tokenDomains');
    visibilityConfig = registerOutput<WebAclVisibilityConfig>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [WebAcl] resource's state with the given [name] and [id].
  static WebAcl get(
    String name,
    pulumi.Input<String> id, {
    WebAclState? state,
  }) {
    return WebAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WebAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAcl:WebAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationIntegrationUrl = registerOutput<String>('applicationIntegrationUrl');
    arn = registerOutput<String>('arn');
    associationConfig = registerOutput<WebAclAssociationConfig?>('associationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclAssociationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacity = registerOutput<int>('capacity');
    captchaConfig = registerOutput<WebAclCaptchaConfig?>('captchaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclCaptchaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    challengeConfig = registerOutput<WebAclChallengeConfig?>('challengeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclChallengeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customResponseBodies = registerOutput<List<Map<String, dynamic>>?>('customResponseBodies');
    dataProtectionConfig = registerOutput<WebAclDataProtectionConfig?>('dataProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDataProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultAction = registerOutput<WebAclDefaultAction>('defaultAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    ruleJson = registerOutput<String?>('ruleJson');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tokenDomains = registerOutput<List<String>?>('tokenDomains');
    visibilityConfig = registerOutput<WebAclVisibilityConfig>('visibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
