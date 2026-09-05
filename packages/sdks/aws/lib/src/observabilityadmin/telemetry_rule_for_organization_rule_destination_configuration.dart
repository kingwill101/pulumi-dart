// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_rule_destination_configuration_cloudtrail_parameters.dart';
import 'telemetry_rule_for_organization_rule_destination_configuration_elb_load_balancer_logging_parameters.dart';
import 'telemetry_rule_for_organization_rule_destination_configuration_log_delivery_parameters.dart';
import 'telemetry_rule_for_organization_rule_destination_configuration_msk_monitoring_parameters.dart';
import 'telemetry_rule_for_organization_rule_destination_configuration_vpc_flow_log_parameters.dart';
import 'telemetry_rule_for_organization_rule_destination_configuration_waf_logging_parameters.dart';

class TelemetryRuleForOrganizationRuleDestinationConfiguration {
  /// CloudTrail-specific parameters when CloudTrail is the source. See `cloudtrailParameters` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParameters?>? cloudtrailParameters;
  /// Pattern used to generate the destination path or name. May contain alphanumeric characters, the macros `&lt;accountId&gt;` and `&lt;resourceId&gt;`, and the symbols `_`, `/`, `-`.
  final pulumi.Input<String?>? destinationPattern;
  /// Destination type for the telemetry data (for example `cloud-watch-logs`).
  final pulumi.Input<String?>? destinationType;
  /// ELB load balancer logging parameters when the resource is an ELB. See `elbLoadBalancerLoggingParameters` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationElbLoadBalancerLoggingParameters?>? elbLoadBalancerLoggingParameters;
  /// Amazon Bedrock AgentCore log delivery parameters. See `logDeliveryParameters` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationLogDeliveryParameters?>? logDeliveryParameters;
  /// Amazon MSK cluster monitoring parameters. See `mskMonitoringParameters` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationMskMonitoringParameters?>? mskMonitoringParameters;
  /// Number of days to retain the telemetry data in the destination.
  final pulumi.Input<int?>? retentionInDays;
  /// VPC Flow Logs-specific parameters when the resource is `AWS::EC2::VPC`. See `vpcFlowLogParameters` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationVpcFlowLogParameters?>? vpcFlowLogParameters;
  /// WAF logging parameters when the resource is `AWS::WAFv2::WebACL`. See `wafLoggingParameters` below.
  final pulumi.Input<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParameters?>? wafLoggingParameters;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfiguration].
  /// [cloudtrailParameters] CloudTrail-specific parameters when CloudTrail is the source. See `cloudtrailParameters` below.
  /// [destinationPattern] Pattern used to generate the destination path or name. May contain alphanumeric characters, the macros `&lt;accountId&gt;` and `&lt;resourceId&gt;`, and the symbols `_`, `/`, `-`.
  /// [destinationType] Destination type for the telemetry data (for example `cloud-watch-logs`).
  /// [elbLoadBalancerLoggingParameters] ELB load balancer logging parameters when the resource is an ELB. See `elbLoadBalancerLoggingParameters` below.
  /// [logDeliveryParameters] Amazon Bedrock AgentCore log delivery parameters. See `logDeliveryParameters` below.
  /// [mskMonitoringParameters] Amazon MSK cluster monitoring parameters. See `mskMonitoringParameters` below.
  /// [retentionInDays] Number of days to retain the telemetry data in the destination.
  /// [vpcFlowLogParameters] VPC Flow Logs-specific parameters when the resource is `AWS::EC2::VPC`. See `vpcFlowLogParameters` below.
  /// [wafLoggingParameters] WAF logging parameters when the resource is `AWS::WAFv2::WebACL`. See `wafLoggingParameters` below.
  const TelemetryRuleForOrganizationRuleDestinationConfiguration({
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
      'cloudtrailParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParameters, Map<String, dynamic>>(cloudtrailParameters, (value) => value.toMap()),
      'destinationPattern': ?destinationPattern,
      'destinationType': ?destinationType,
      'elbLoadBalancerLoggingParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationElbLoadBalancerLoggingParameters, Map<String, dynamic>>(elbLoadBalancerLoggingParameters, (value) => value.toMap()),
      'logDeliveryParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationLogDeliveryParameters, Map<String, dynamic>>(logDeliveryParameters, (value) => value.toMap()),
      'mskMonitoringParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationMskMonitoringParameters, Map<String, dynamic>>(mskMonitoringParameters, (value) => value.toMap()),
      'retentionInDays': ?retentionInDays,
      'vpcFlowLogParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationVpcFlowLogParameters, Map<String, dynamic>>(vpcFlowLogParameters, (value) => value.toMap()),
      'wafLoggingParameters': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParameters, Map<String, dynamic>>(wafLoggingParameters, (value) => value.toMap()),
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfiguration(
      cloudtrailParameters: (() { final guardedValue = map['cloudtrailParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationPattern: (() { final guardedValue = map['destinationPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elbLoadBalancerLoggingParameters: (() { final guardedValue = map['elbLoadBalancerLoggingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationElbLoadBalancerLoggingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logDeliveryParameters: (() { final guardedValue = map['logDeliveryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationLogDeliveryParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mskMonitoringParameters: (() { final guardedValue = map['mskMonitoringParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationMskMonitoringParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      vpcFlowLogParameters: (() { final guardedValue = map['vpcFlowLogParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationVpcFlowLogParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wafLoggingParameters: (() { final guardedValue = map['wafLoggingParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
