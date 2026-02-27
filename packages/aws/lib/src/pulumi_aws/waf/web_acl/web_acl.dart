import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_default_action/web_acl_default_action.dart';
import '../web_acl_logging_configuration/web_acl_logging_configuration.dart';
import '../web_acl_rule/web_acl_rule.dart';
import 'web_acl_args.dart';

/// Provides a WAF Web ACL Resource
///
/// ## Example Usage
///
/// This example blocks requests coming from `192.0.7.0/24` and allows everything else.
///
///
///
/// ### Logging
///
/// > *NOTE:* The Kinesis Firehose Delivery Stream name must begin with `aws-waf-logs-` and be located in `us-east-1` region. See the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html) for more information about enabling WAF logging.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Web ACL using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:waf/webAcl:WebAcl main 0c8e583e-18f3-4c13-9e2a-67c4805d2f94
/// ```
class WebAcl extends pulumi.CustomResource {
  /// The ARN of the WAF WebACL.
  late final pulumi.Output<String> arn;

  /// Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. Detailed below.
  late final pulumi.Output<WebAclDefaultAction> defaultAction;

  /// Configuration block to enable WAF logging. Detailed below.
  late final pulumi.Output<WebAclLoggingConfiguration?> loggingConfiguration;

  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  late final pulumi.Output<String> metricName;

  /// The name or description of the web ACL.
  late final pulumi.Output<String> name;

  /// Configuration blocks containing rules to associate with the web ACL and the settings for each rule. Detailed below.
  late final pulumi.Output<List<WebAclRule>?> rules;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  WebAcl(
    String name, {
    WebAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/webAcl:WebAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultAction = registerOutput<WebAclDefaultAction>('defaultAction');
    this.loggingConfiguration =
        registerOutput<WebAclLoggingConfiguration?>('loggingConfiguration');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.rules = registerOutput<List<WebAclRule>?>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
