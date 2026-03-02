// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_logging_configuration_logging_filter.dart';
import 'web_acl_logging_configuration_redacted_field.dart';

/// {@template pulumi_wafv2_web_acl_logging_configuration_web_acl_logging_configuration_args_doc}
/// The set of arguments for WebAclLoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_wafv2_web_acl_logging_configuration_web_acl_logging_configuration_args_doc}
class WebAclLoggingConfigurationArgs {
  /// Configuration block that allows you to associate Amazon Kinesis Data Firehose, Cloudwatch Log log group, or S3 bucket Amazon Resource Names (ARNs) with the web ACL. **Note:** data firehose, log group, or bucket name **must** be prefixed with `aws-waf-logs-`, e.g. `aws-waf-logs-example-firehose`, `aws-waf-logs-example-log-group`, or `aws-waf-logs-example-bucket`.
  final pulumi.Input<List<String>> logDestinationConfigs;
  /// Configuration block that specifies which web requests are kept in the logs and which are dropped. It allows filtering based on the rule action and the web request labels applied by matching rules during web ACL evaluation. For more details, refer to the Logging Filter section below.
  final pulumi.Input<WebAclLoggingConfigurationLoggingFilter>? loggingFilter;
  /// Configuration for parts of the request that you want to keep out of the logs. Up to 100 `redacted_fields` blocks are supported. See Redacted Fields below for more details.
  final pulumi.Input<List<WebAclLoggingConfigurationRedactedField>>? redactedFields;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the web ACL that you want to associate with `log_destination_configs`.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [WebAclLoggingConfigurationArgs].
  /// [logDestinationConfigs] Configuration block that allows you to associate Amazon Kinesis Data Firehose, Cloudwatch Log log group, or S3 bucket Amazon Resource Names (ARNs) with the web ACL. **Note:** data firehose, log group, or bucket name **must** be prefixed with `aws-waf-logs-`, e.g. `aws-waf-logs-example-firehose`, `aws-waf-logs-example-log-group`, or `aws-waf-logs-example-bucket`.
  /// [loggingFilter] Configuration block that specifies which web requests are kept in the logs and which are dropped. It allows filtering based on the rule action and the web request labels applied by matching rules during web ACL evaluation. For more details, refer to the Logging Filter section below.
  /// [redactedFields] Configuration for parts of the request that you want to keep out of the logs. Up to 100 `redacted_fields` blocks are supported. See Redacted Fields below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Amazon Resource Name (ARN) of the web ACL that you want to associate with `log_destination_configs`.
  WebAclLoggingConfigurationArgs({
    required this.logDestinationConfigs,
    this.loggingFilter,
    this.redactedFields,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestinationConfigs': logDestinationConfigs,
      'loggingFilter': ?pulumi.Input.mapOptionalInputValue<WebAclLoggingConfigurationLoggingFilter, Map<String, dynamic>>(loggingFilter, (value) => value.toMap()),
      'redactedFields': ?pulumi.Input.mapOptionalInputValue<List<WebAclLoggingConfigurationRedactedField>, List<Map<String, dynamic>>>(redactedFields, (value) => pulumi.Input.encodeList<WebAclLoggingConfigurationRedactedField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory WebAclLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationArgs(
      logDestinationConfigs: ((map['logDestinationConfigs'] as List).cast<String>()).input(),
      loggingFilter: map['loggingFilter'] == null ? null : ((WebAclLoggingConfigurationLoggingFilter.fromMap((map['loggingFilter']! as Map).cast<String, dynamic>())).input()).input(),
      redactedFields: map['redactedFields'] == null ? null : ((pulumi.Input.decodeList<WebAclLoggingConfigurationRedactedField>(map['redactedFields']!, (value) => WebAclLoggingConfigurationRedactedField.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: (map['resourceArn'] as String).input(),
    );
  }
}

