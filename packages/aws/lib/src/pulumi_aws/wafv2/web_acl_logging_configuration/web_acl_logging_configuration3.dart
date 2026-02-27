import 'package:pulumi/pulumi.dart';
import '../web_acl_logging_configuration_logging_filter/web_acl_logging_configuration_logging_filter.dart';
import '../web_acl_logging_configuration_redacted_field/web_acl_logging_configuration_redacted_field.dart';
import 'web_acl_logging_configuration_args.dart';

/// This resource creates a WAFv2 Web ACL Logging Configuration.
///
/// !> **WARNING:** When logging from a WAFv2 Web ACL to a CloudWatch Log Group, the WAFv2 service tries to create or update a generic Log Resource Policy named `AWSWAF-LOGS`. However, if there are a large number of Web ACLs or if the account frequently creates and deletes Web ACLs, this policy may exceed the maximum policy size. As a result, this resource type will fail to be created. More details about this issue can be found in this issue. To prevent this issue, you can manage a specific resource policy. Please refer to the example below for managing a CloudWatch Log Group with a managed CloudWatch Log Resource Policy.
///
/// ## Example Usage
///
/// ### With Redacted Fields
///
///
///
/// ### With Logging Filter
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Web ACL Logging Configurations using the ARN of the WAFv2 Web ACL. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclLoggingConfiguration:WebAclLoggingConfiguration example arn:aws:wafv2:us-west-2:123456789012:regional/webacl/test-logs/a1b2c3d4-5678-90ab-cdef
/// ```
class WebAclLoggingConfiguration3 extends CustomResource {
  /// Configuration block that allows you to associate Amazon Kinesis Data Firehose, Cloudwatch Log log group, or S3 bucket Amazon Resource Names (ARNs) with the web ACL. **Note:** data firehose, log group, or bucket name **must** be prefixed with `aws-waf-logs-`, e.g. `aws-waf-logs-example-firehose`, `aws-waf-logs-example-log-group`, or `aws-waf-logs-example-bucket`.
  late final Output<List<String>> logDestinationConfigs;

  /// Configuration block that specifies which web requests are kept in the logs and which are dropped. It allows filtering based on the rule action and the web request labels applied by matching rules during web ACL evaluation. For more details, refer to the Logging Filter section below.
  late final Output<WebAclLoggingConfigurationLoggingFilter?> loggingFilter;

  /// Configuration for parts of the request that you want to keep out of the logs. Up to 100 `redacted_fields` blocks are supported. See Redacted Fields below for more details.
  late final Output<List<WebAclLoggingConfigurationRedactedField>?>
      redactedFields;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the web ACL that you want to associate with `log_destination_configs`.
  late final Output<String> resourceArn;

  WebAclLoggingConfiguration3(
    String name, {
    WebAclLoggingConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclLoggingConfiguration:WebAclLoggingConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logDestinationConfigs =
        registerOutput<List<String>>('logDestinationConfigs');
    this.loggingFilter =
        registerOutput<WebAclLoggingConfigurationLoggingFilter?>(
            'loggingFilter');
    this.redactedFields =
        registerOutput<List<WebAclLoggingConfigurationRedactedField>?>(
            'redactedFields');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
