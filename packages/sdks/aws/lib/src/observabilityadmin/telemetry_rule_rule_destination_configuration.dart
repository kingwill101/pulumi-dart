// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule_destination_configuration_cloudtrail_parameters.dart';
import 'telemetry_rule_rule_destination_configuration_elb_load_balancer_logging_parameters.dart';
import 'telemetry_rule_rule_destination_configuration_log_delivery_parameters.dart';
import 'telemetry_rule_rule_destination_configuration_msk_monitoring_parameters.dart';
import 'telemetry_rule_rule_destination_configuration_vpc_flow_log_parameters.dart';
import 'telemetry_rule_rule_destination_configuration_waf_logging_parameters.dart';

class TelemetryRuleRuleDestinationConfiguration {
  /// CloudTrail-specific parameters when CloudTrail is the source. See `cloudtrailParameters` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationCloudtrailParameters>? cloudtrailParameters;
  /// Pattern used to generate the destination path or name. May contain alphanumeric characters, the macros `&lt;accountId&gt;` and `&lt;resourceId&gt;`, and the symbols `_`, `/`, `-`.
  final pulumi.Input<String>? destinationPattern;
  /// Destination type for the telemetry data (for example `cloud-watch-logs`).
  final pulumi.Input<String>? destinationType;
  /// ELB load balancer logging parameters when the resource is an ELB. See `elbLoadBalancerLoggingParameters` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters>? elbLoadBalancerLoggingParameters;
  /// Amazon Bedrock AgentCore log delivery parameters. See `logDeliveryParameters` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationLogDeliveryParameters>? logDeliveryParameters;
  /// Amazon MSK cluster monitoring parameters. See `mskMonitoringParameters` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationMskMonitoringParameters>? mskMonitoringParameters;
  /// Number of days to retain the telemetry data in the destination.
  final pulumi.Input<int>? retentionInDays;
  /// VPC Flow Logs-specific parameters when the resource is `AWS::EC2::VPC`. See `vpcFlowLogParameters` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters>? vpcFlowLogParameters;
  /// WAF logging parameters when the resource is `AWS::WAFv2::WebACL`. See `wafLoggingParameters` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfigurationWafLoggingParameters>? wafLoggingParameters;

  /// Creates a new [TelemetryRuleRuleDestinationConfiguration].
  /// [cloudtrailParameters] CloudTrail-specific parameters when CloudTrail is the source. See `cloudtrailParameters` below.
  /// [destinationPattern] Pattern used to generate the destination path or name. May contain alphanumeric characters, the macros `&lt;accountId&gt;` and `&lt;resourceId&gt;`, and the symbols `_`, `/`, `-`.
  /// [destinationType] Destination type for the telemetry data (for example `cloud-watch-logs`).
  /// [elbLoadBalancerLoggingParameters] ELB load balancer logging parameters when the resource is an ELB. See `elbLoadBalancerLoggingParameters` below.
  /// [logDeliveryParameters] Amazon Bedrock AgentCore log delivery parameters. See `logDeliveryParameters` below.
  /// [mskMonitoringParameters] Amazon MSK cluster monitoring parameters. See `mskMonitoringParameters` below.
  /// [retentionInDays] Number of days to retain the telemetry data in the destination.
  /// [vpcFlowLogParameters] VPC Flow Logs-specific parameters when the resource is `AWS::EC2::VPC`. See `vpcFlowLogParameters` below.
  /// [wafLoggingParameters] WAF logging parameters when the resource is `AWS::WAFv2::WebACL`. See `wafLoggingParameters` below.
  const TelemetryRuleRuleDestinationConfiguration({
    this.cloudtrailParameters,
    this.destinationPattern,
    this.destinationType,
    this.elbLoadBalancerLoggingParameters,
    this.logDeliveryParameters,
    this.mskMonitoringParameters,
    this.retentionInDays,
    this.vpcFlowLogParameters,
    this.wafLoggingParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudtrailParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationCloudtrailParameters, Map<String, dynamic>>(cloudtrailParameters, (value) => value.toMap()),
      'destinationPattern': ?destinationPattern,
      'destinationType': ?destinationType,
      'elbLoadBalancerLoggingParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters, Map<String, dynamic>>(elbLoadBalancerLoggingParameters, (value) => value.toMap()),
      'logDeliveryParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationLogDeliveryParameters, Map<String, dynamic>>(logDeliveryParameters, (value) => value.toMap()),
      'mskMonitoringParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationMskMonitoringParameters, Map<String, dynamic>>(mskMonitoringParameters, (value) => value.toMap()),
      'retentionInDays': ?retentionInDays,
      'vpcFlowLogParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters, Map<String, dynamic>>(vpcFlowLogParameters, (value) => value.toMap()),
      'wafLoggingParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfigurationWafLoggingParameters, Map<String, dynamic>>(wafLoggingParameters, (value) => value.toMap()),
    };
  }

  factory TelemetryRuleRuleDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfiguration(
      cloudtrailParameters: (() { final guardedValue = map['cloudtrailParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationCloudtrailParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationPattern: (() { final guardedValue = map['destinationPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elbLoadBalancerLoggingParameters: (() { final guardedValue = map['elbLoadBalancerLoggingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationElbLoadBalancerLoggingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logDeliveryParameters: (() { final guardedValue = map['logDeliveryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationLogDeliveryParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mskMonitoringParameters: (() { final guardedValue = map['mskMonitoringParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationMskMonitoringParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcFlowLogParameters: (() { final guardedValue = map['vpcFlowLogParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationVpcFlowLogParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wafLoggingParameters: (() { final guardedValue = map['wafLoggingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfigurationWafLoggingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
