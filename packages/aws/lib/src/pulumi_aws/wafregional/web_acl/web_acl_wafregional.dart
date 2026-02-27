import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_default_action/web_acl_default_action_wafregional.dart';
import '../web_acl_logging_configuration/web_acl_logging_configuration_wafregional.dart';
import '../web_acl_rule/web_acl_rule_wafregional.dart';
import 'web_acl_wafregional_args.dart';

/// Provides a WAF Regional Web ACL Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
/// ### Regular Rule
///
///
///
/// ### Group Rule
///
///
///
/// ### Logging
///
/// > *NOTE:* The Kinesis Firehose Delivery Stream name must begin with `aws-waf-logs-`. See the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html) for more information about enabling WAF logging.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Web ACL using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/webAcl:WebAcl wafacl a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class WebAclWafregional extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the WAF Regional WebACL.
  late final pulumi.Output<String> arn;

  /// The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
  late final pulumi.Output<WebAclDefaultActionWafregional> defaultAction;

  /// Configuration block to enable WAF logging. Detailed below.
  late final pulumi.Output<WebAclLoggingConfigurationWafregional?>
      loggingConfiguration;

  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  late final pulumi.Output<String> metricName;

  /// The name or description of the web ACL.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set of configuration blocks containing rules for the web ACL. Detailed below.
  late final pulumi.Output<List<WebAclRuleWafregional>?> rules;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  WebAclWafregional(
    String name, {
    WebAclWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/webAcl:WebAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultAction =
        registerOutput<WebAclDefaultActionWafregional>('defaultAction');
    this.loggingConfiguration =
        registerOutput<WebAclLoggingConfigurationWafregional?>(
            'loggingConfiguration');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<WebAclRuleWafregional>?>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
