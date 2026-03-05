// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule_source_source_logs_configuration.dart';

class CentralizationRuleForOrganizationRuleSource {
  /// Set of AWS regions from which to centralize logs. Must contain at least one region.
  final pulumi.Input<List<String>> regions;
  /// Scope defining which resources to include. Use organization ID format: `OrganizationId = 'o-example123456'`.
  final pulumi.Input<String> scope;
  /// Configuration block for source logs settings. See `source_logs_configuration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration>? sourceLogsConfiguration;

  /// Creates a new [CentralizationRuleForOrganizationRuleSource].
  /// [regions] Set of AWS regions from which to centralize logs. Must contain at least one region.
  /// [scope] Scope defining which resources to include. Use organization ID format: `OrganizationId = 'o-example123456'`.
  /// [sourceLogsConfiguration] Configuration block for source logs settings. See `source_logs_configuration` below.
  CentralizationRuleForOrganizationRuleSource({
    required this.regions,
    required this.scope,
    this.sourceLogsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': regions,
      'scope': scope,
      'sourceLogsConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration, Map<String, dynamic>>(sourceLogsConfiguration, (value) => value.toMap()),
    };
  }

  factory CentralizationRuleForOrganizationRuleSource.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleSource(
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      sourceLogsConfiguration: (() { final guardedValue = map['sourceLogsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

