import 'package:pulumi/pulumi.dart';
import '../rule_group_custom_response_body/rule_group_custom_response_body.dart';
import '../rule_group_rule/rule_group_rule.dart';
import '../rule_group_visibility_config/rule_group_visibility_config.dart';
import 'rule_group_args4.dart';

/// Creates a WAFv2 Rule Group resource.
///
/// ## Example Usage
///
/// ### Simple
///
///
///
/// ### Complex
///
///
///
/// ### Using rules_json
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Rule Group using `ID/name/scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/ruleGroup:RuleGroup example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc/example/REGIONAL
/// ```
class RuleGroup4 extends CustomResource {
  /// The ARN of the WAF rule group.
  late final Output<String> arn;

  /// The web ACL capacity units (WCUs) required for this rule group. See [here](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html#API_CreateRuleGroup_RequestSyntax) for general information and [here](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statements-list.html) for capacity specific information.
  late final Output<int> capacity;

  /// Defines custom response bodies that can be referenced by `custom_response` actions. See Custom Response Body below for details.
  late final Output<List<RuleGroupCustomResponseBody>?> customResponseBodies;

  /// A friendly description of the rule group.
  late final Output<String?> description;
  late final Output<String> lockToken;

  /// A friendly name of the rule group.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The rule blocks used to identify the web requests that you want to `allow`, `block`, or `count`. See Rules below for details.
  late final Output<List<RuleGroupRule>?> rules;

  /// Raw JSON string to allow more than three nested statements. Conflicts with `rule` attribute. This is for advanced use cases where more than 3 levels of nested statements are required. **There is no drift detection at this time**. If you use this attribute instead of `rule`, you will be foregoing drift detection. Additionally, importing an existing rule group into a configuration with `rules_json` set will result in a one time in-place update as the remote rule configuration is initially written to the `rule` attribute. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html) for the JSON structure.
  late final Output<String?> rulesJson;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  late final Output<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  late final Output<RuleGroupVisibilityConfig> visibilityConfig;

  RuleGroup4(
    String name, {
    RuleGroupArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/ruleGroup:RuleGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capacity = registerOutput<int>('capacity');
    this.customResponseBodies =
        registerOutput<List<RuleGroupCustomResponseBody>?>(
            'customResponseBodies');
    this.description = registerOutput<String?>('description');
    this.lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<RuleGroupRule>?>('rules');
    this.rulesJson = registerOutput<String?>('rulesJson');
    this.scope = registerOutput<String>('scope');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.visibilityConfig =
        registerOutput<RuleGroupVisibilityConfig>('visibilityConfig');
  }
}
