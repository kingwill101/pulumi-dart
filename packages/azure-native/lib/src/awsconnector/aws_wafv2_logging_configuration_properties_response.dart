// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_to_match_response.dart';
import 'logging_filter_model_properties_response.dart';

/// Definition of awsWafv2LoggingConfiguration
class AwsWafv2LoggingConfigurationPropertiesResponse {
  /// The Amazon Resource Names (ARNs) of the logging destinations that you want to associate with the web ACL.
  final List<String>? logDestinationConfigs;
  /// Filtering that specifies which web requests are kept in the logs and which are dropped. You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation.
  final LoggingFilterModelPropertiesResponse? loggingFilter;
  /// Indicates whether the logging configuration was created by AWS Firewall Manager, as part of an AWS WAF policy configuration. If true, only Firewall Manager can modify or delete the configuration.
  final bool? managedByFirewallManager;
  /// The parts of the request that you want to keep out of the logs. For example, if you redact the HEADER field, the HEADER field in the firehose will be xxx.
  final List<FieldToMatchResponse>? redactedFields;
  /// The Amazon Resource Name (ARN) of the web ACL that you want to associate with LogDestinationConfigs.
  final String? resourceArn;

  /// Creates a new [AwsWafv2LoggingConfigurationPropertiesResponse].
  /// [logDestinationConfigs] The Amazon Resource Names (ARNs) of the logging destinations that you want to associate with the web ACL.
  /// [loggingFilter] Filtering that specifies which web requests are kept in the logs and which are dropped. You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation.
  /// [managedByFirewallManager] Indicates whether the logging configuration was created by AWS Firewall Manager, as part of an AWS WAF policy configuration. If true, only Firewall Manager can modify or delete the configuration.
  /// [redactedFields] The parts of the request that you want to keep out of the logs. For example, if you redact the HEADER field, the HEADER field in the firehose will be xxx.
  /// [resourceArn] The Amazon Resource Name (ARN) of the web ACL that you want to associate with LogDestinationConfigs.
  AwsWafv2LoggingConfigurationPropertiesResponse({
    this.logDestinationConfigs,
    this.loggingFilter,
    this.managedByFirewallManager,
    this.redactedFields,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestinationConfigs': ?logDestinationConfigs,
      'loggingFilter': ?loggingFilter == null ? null : loggingFilter!.toMap(),
      'managedByFirewallManager': ?managedByFirewallManager,
      'redactedFields': ?redactedFields == null ? null : pulumi.Input.encodeList<FieldToMatchResponse, Map<String, dynamic>>(redactedFields!, (value) => value.toMap()),
      'resourceArn': ?resourceArn,
    };
  }

  factory AwsWafv2LoggingConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsWafv2LoggingConfigurationPropertiesResponse(
      logDestinationConfigs: map['logDestinationConfigs'] == null ? null : (map['logDestinationConfigs'] as List).cast<String>(),
      loggingFilter: map['loggingFilter'] == null ? null : LoggingFilterModelPropertiesResponse.fromMap((map['loggingFilter'] as Map).cast<String, dynamic>()),
      managedByFirewallManager: map['managedByFirewallManager'] == null ? null : map['managedByFirewallManager'] as bool,
      redactedFields: map['redactedFields'] == null ? null : pulumi.Input.decodeList<FieldToMatchResponse>(map['redactedFields'], (value) => FieldToMatchResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceArn: map['resourceArn'] == null ? null : map['resourceArn'] as String,
    );
  }
}

