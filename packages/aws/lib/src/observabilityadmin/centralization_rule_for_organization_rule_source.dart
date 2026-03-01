// ignore_for_file: unused_element, unnecessary_cast

import 'centralization_rule_for_organization_rule_source_source_logs_configuration.dart';

class CentralizationRuleForOrganizationRuleSource {
  /// Set of AWS regions from which to centralize logs. Must contain at least one region.
  final List<String> regions;
  /// Scope defining which resources to include. Use organization ID format: `OrganizationId = 'o-example123456'`.
  final String scope;
  /// Configuration block for source logs settings. See `source_logs_configuration` below.
  final CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration? sourceLogsConfiguration;

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
      'sourceLogsConfiguration': ?sourceLogsConfiguration == null ? null : sourceLogsConfiguration!.toMap(),
    };
  }

  factory CentralizationRuleForOrganizationRuleSource.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleSource(
      regions: (map['regions'] as List).cast<String>(),
      scope: map['scope'] as String,
      sourceLogsConfiguration: map['sourceLogsConfiguration'] == null ? null : CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration.fromMap((map['sourceLogsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

