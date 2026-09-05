// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule_destination_configuration.dart';

class TelemetryRuleRule {
  /// Whether to replicate the rule to every Region in the partition where CloudWatch Observability Admin is available. Mutually exclusive with `regions`.
  final pulumi.Input<bool?>? allRegions;
  /// Whether CloudWatch Observability Admin should detect and remediate configuration drift in managed telemetry resources. Currently supported for `AWS::EC2::VPC` resources (VPC flow logs).
  final pulumi.Input<bool?>? allowFieldUpdates;
  /// Configuration block specifying where and how the telemetry data is delivered. See `destinationConfiguration` below.
  final pulumi.Input<TelemetryRuleRuleDestinationConfiguration?>? destinationConfiguration;
  /// Set of Regions to replicate the rule to. Mutually exclusive with `allRegions`. Order is not preserved.
  final pulumi.Input<List<String>?>? regions;
  /// AWS resource type to apply the rule to (for example `AWS::EC2::VPC`, `AWS::EKS::Cluster`, `AWS::WAFv2::WebACL`).
  final pulumi.Input<String?>? resourceType;
  /// Organizational scope to which the rule applies, specified using accounts or organizational units.
  final pulumi.Input<String?>? scope;
  /// Criteria for selecting which resources the rule applies to, such as resource tags.
  final pulumi.Input<String?>? selectionCriteria;
  /// List of telemetry source types to configure for the resource (for example `VPC_FLOW_LOGS`, `EKS_AUDIT_LOGS`). Must correlate with the chosen `resourceType`. If not provided, the API may default this value based on `resourceType` (for example `VPC_FLOW_LOGS` for `AWS::EC2::VPC`).
  final pulumi.Input<List<String>?>? telemetrySourceTypes;
  /// Type of telemetry data to collect. Valid values: `Logs`, `Metrics`, `Traces`.
  final pulumi.Input<String> telemetryType;

  /// Creates a new [TelemetryRuleRule].
  /// [allRegions] Whether to replicate the rule to every Region in the partition where CloudWatch Observability Admin is available. Mutually exclusive with `regions`.
  /// [allowFieldUpdates] Whether CloudWatch Observability Admin should detect and remediate configuration drift in managed telemetry resources. Currently supported for `AWS::EC2::VPC` resources (VPC flow logs).
  /// [destinationConfiguration] Configuration block specifying where and how the telemetry data is delivered. See `destinationConfiguration` below.
  /// [regions] Set of Regions to replicate the rule to. Mutually exclusive with `allRegions`. Order is not preserved.
  /// [resourceType] AWS resource type to apply the rule to (for example `AWS::EC2::VPC`, `AWS::EKS::Cluster`, `AWS::WAFv2::WebACL`).
  /// [scope] Organizational scope to which the rule applies, specified using accounts or organizational units.
  /// [selectionCriteria] Criteria for selecting which resources the rule applies to, such as resource tags.
  /// [telemetrySourceTypes] List of telemetry source types to configure for the resource (for example `VPC_FLOW_LOGS`, `EKS_AUDIT_LOGS`). Must correlate with the chosen `resourceType`. If not provided, the API may default this value based on `resourceType` (for example `VPC_FLOW_LOGS` for `AWS::EC2::VPC`).
  /// [telemetryType] Type of telemetry data to collect. Valid values: `Logs`, `Metrics`, `Traces`.
  const TelemetryRuleRule({
    this.allRegions,
    this.allowFieldUpdates,
    this.destinationConfiguration,
    this.regions,
    this.resourceType,
    this.scope,
    this.selectionCriteria,
    this.telemetrySourceTypes,
    required this.telemetryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allRegions': ?allRegions,
      'allowFieldUpdates': ?allowFieldUpdates,
      'destinationConfiguration': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRuleDestinationConfiguration, Map<String, dynamic>>(destinationConfiguration, (value) => value.toMap()),
      'regions': ?regions,
      'resourceType': ?resourceType,
      'scope': ?scope,
      'selectionCriteria': ?selectionCriteria,
      'telemetrySourceTypes': ?telemetrySourceTypes,
      'telemetryType': telemetryType,
    };
  }

  factory TelemetryRuleRule.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRule(
      allRegions: (() { final guardedValue = map['allRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowFieldUpdates: (() { final guardedValue = map['allowFieldUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      destinationConfiguration: (() { final guardedValue = map['destinationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRuleDestinationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectionCriteria: (() { final guardedValue = map['selectionCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      telemetrySourceTypes: (() { final guardedValue = map['telemetrySourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      telemetryType: pulumi.Input.fromValue(map['telemetryType'] as String),
    );
  }
}
