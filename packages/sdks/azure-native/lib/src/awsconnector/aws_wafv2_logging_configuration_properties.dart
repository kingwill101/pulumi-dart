// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_to_match.dart';
import 'logging_filter_model_properties.dart';

/// Definition of awsWafv2LoggingConfiguration
class AwsWafv2LoggingConfigurationProperties {
  /// The Amazon Resource Names (ARNs) of the logging destinations that you want to associate with the web ACL.
  final pulumi.Input<List<String>?>? logDestinationConfigs;
  /// Filtering that specifies which web requests are kept in the logs and which are dropped. You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation.
  final pulumi.Input<LoggingFilterModelProperties?>? loggingFilter;
  /// Indicates whether the logging configuration was created by AWS Firewall Manager, as part of an AWS WAF policy configuration. If true, only Firewall Manager can modify or delete the configuration.
  final pulumi.Input<bool?>? managedByFirewallManager;
  /// The parts of the request that you want to keep out of the logs. For example, if you redact the HEADER field, the HEADER field in the firehose will be xxx.
  final pulumi.Input<List<FieldToMatch>?>? redactedFields;
  /// The Amazon Resource Name (ARN) of the web ACL that you want to associate with LogDestinationConfigs.
  final pulumi.Input<String?>? resourceArn;

  /// Creates a new [AwsWafv2LoggingConfigurationProperties].
  /// [logDestinationConfigs] The Amazon Resource Names (ARNs) of the logging destinations that you want to associate with the web ACL.
  /// [loggingFilter] Filtering that specifies which web requests are kept in the logs and which are dropped. You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation.
  /// [managedByFirewallManager] Indicates whether the logging configuration was created by AWS Firewall Manager, as part of an AWS WAF policy configuration. If true, only Firewall Manager can modify or delete the configuration.
  /// [redactedFields] The parts of the request that you want to keep out of the logs. For example, if you redact the HEADER field, the HEADER field in the firehose will be xxx.
  /// [resourceArn] The Amazon Resource Name (ARN) of the web ACL that you want to associate with LogDestinationConfigs.
  const AwsWafv2LoggingConfigurationProperties({
    this.logDestinationConfigs,
    this.loggingFilter,
    this.managedByFirewallManager,
    this.redactedFields,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestinationConfigs': ?logDestinationConfigs,
      'loggingFilter': ?pulumi.Input.mapOptionalInputValue<LoggingFilterModelProperties, Map<String, dynamic>>(loggingFilter, (value) => value.toMap()),
      'managedByFirewallManager': ?managedByFirewallManager,
      'redactedFields': ?pulumi.Input.mapOptionalInputValue<List<FieldToMatch>, List<Map<String, dynamic>>>(redactedFields, (value) => pulumi.Input.encodeList<FieldToMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceArn': ?resourceArn,
    };
  }

  factory AwsWafv2LoggingConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return AwsWafv2LoggingConfigurationProperties(
      logDestinationConfigs: (() { final guardedValue = map['logDestinationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingFilter: (() { final guardedValue = map['loggingFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingFilterModelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedByFirewallManager: (() { final guardedValue = map['managedByFirewallManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      redactedFields: (() { final guardedValue = map['redactedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FieldToMatch>(guardedValue, (value) => FieldToMatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
