// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_logging_configuration_logging_filter/web_acl_logging_configuration_logging_filter.dart';
import '../web_acl_logging_configuration_redacted_field/web_acl_logging_configuration_redacted_field.dart';

/// The set of arguments for WebAclLoggingConfiguration.
class WebAclLoggingConfigurationArgs {
  /// Configuration block that allows you to associate Amazon Kinesis Data Firehose, Cloudwatch Log log group, or S3 bucket Amazon Resource Names (ARNs) with the web ACL. **Note:** data firehose, log group, or bucket name **must** be prefixed with `aws-waf-logs-`, e.g. `aws-waf-logs-example-firehose`, `aws-waf-logs-example-log-group`, or `aws-waf-logs-example-bucket`.
  final Input<List<String>> logDestinationConfigs;

  /// Configuration block that specifies which web requests are kept in the logs and which are dropped. It allows filtering based on the rule action and the web request labels applied by matching rules during web ACL evaluation. For more details, refer to the Logging Filter section below.
  final Input<WebAclLoggingConfigurationLoggingFilter>? loggingFilter;

  /// Configuration for parts of the request that you want to keep out of the logs. Up to 100 <span pulumi-lang-nodejs="`redactedFields`" pulumi-lang-dotnet="`RedactedFields`" pulumi-lang-go="`redactedFields`" pulumi-lang-python="`redacted_fields`" pulumi-lang-yaml="`redactedFields`" pulumi-lang-java="`redactedFields`">`redacted_fields`</span> blocks are supported. See Redacted Fields below for more details.
  final Input<List<WebAclLoggingConfigurationRedactedField>>? redactedFields;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) of the web ACL that you want to associate with <span pulumi-lang-nodejs="`logDestinationConfigs`" pulumi-lang-dotnet="`LogDestinationConfigs`" pulumi-lang-go="`logDestinationConfigs`" pulumi-lang-python="`log_destination_configs`" pulumi-lang-yaml="`logDestinationConfigs`" pulumi-lang-java="`logDestinationConfigs`">`log_destination_configs`</span>.
  final Input<String> resourceArn;

  WebAclLoggingConfigurationArgs({
    required this.logDestinationConfigs,
    this.loggingFilter,
    this.redactedFields,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logDestinationConfigs'] = logDestinationConfigs;
    final loggingFilterValue = loggingFilter;
    if (loggingFilterValue != null) {
      map['loggingFilter'] = Input.mapOptionalInputValue<
          WebAclLoggingConfigurationLoggingFilter,
          Map<String, dynamic>>(loggingFilterValue, (value) => value.toMap());
    }
    final redactedFieldsValue = redactedFields;
    if (redactedFieldsValue != null) {
      map['redactedFields'] = Input.mapOptionalInputValue<
              List<WebAclLoggingConfigurationRedactedField>,
              List<Map<String, dynamic>>>(
          redactedFieldsValue,
          (value) => Input.encodeList<WebAclLoggingConfigurationRedactedField,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory WebAclLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WebAclLoggingConfigurationArgs(
      logDestinationConfigs:
          Input.asInput<List<String>>(map['logDestinationConfigs']),
      loggingFilter:
          Input.asOptionalInput<WebAclLoggingConfigurationLoggingFilter>(
              map['loggingFilter']),
      redactedFields:
          Input.asOptionalInput<List<WebAclLoggingConfigurationRedactedField>>(
              map['redactedFields']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
    );
  }
}
