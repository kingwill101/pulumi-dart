import 'package:pulumi/pulumi.dart';
import '../web_acl_default_action/web_acl_default_action2.dart';
import '../web_acl_logging_configuration/web_acl_logging_configuration2.dart';
import '../web_acl_rule/web_acl_rule2.dart';
import 'web_acl_args2.dart';

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
class WebAcl2 extends CustomResource {
  /// Amazon Resource Name (ARN) of the WAF Regional WebACL.
  late final Output<String> arn;

  /// The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
  late final Output<WebAclDefaultAction2> defaultAction;

  /// Configuration block to enable WAF logging. Detailed below.
  late final Output<WebAclLoggingConfiguration2?> loggingConfiguration;

  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  late final Output<String> metricName;

  /// The name or description of the web ACL.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of configuration blocks containing rules for the web ACL. Detailed below.
  late final Output<List<WebAclRule2>?> rules;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  WebAcl2(
    String name, {
    WebAclArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/webAcl:WebAcl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultAction = registerOutput<WebAclDefaultAction2>('defaultAction');
    this.loggingConfiguration =
        registerOutput<WebAclLoggingConfiguration2?>('loggingConfiguration');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<WebAclRule2>?>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
