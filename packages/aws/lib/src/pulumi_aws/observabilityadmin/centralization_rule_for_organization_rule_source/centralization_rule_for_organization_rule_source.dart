// ignore_for_file: unused_element, unnecessary_cast

import '../centralization_rule_for_organization_rule_source_source_logs_configuration/centralization_rule_for_organization_rule_source_source_logs_configuration.dart';

class CentralizationRuleForOrganizationRuleSource {
  /// Set of AWS regions from which to centralize logs. Must contain at least one region.
  final List<String> regions;

  /// Scope defining which resources to include. Use organization ID format: `OrganizationId = 'o-example123456'`.
  final String scope;

  /// Configuration block for source logs settings. See <span pulumi-lang-nodejs="`sourceLogsConfiguration`" pulumi-lang-dotnet="`SourceLogsConfiguration`" pulumi-lang-go="`sourceLogsConfiguration`" pulumi-lang-python="`source_logs_configuration`" pulumi-lang-yaml="`sourceLogsConfiguration`" pulumi-lang-java="`sourceLogsConfiguration`">`source_logs_configuration`</span> below.
  final CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration?
      sourceLogsConfiguration;

  CentralizationRuleForOrganizationRuleSource({
    required this.regions,
    required this.scope,
    this.sourceLogsConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['regions'] = regions;
    map['scope'] = scope;
    final sourceLogsConfigurationValue = sourceLogsConfiguration;
    if (sourceLogsConfigurationValue != null) {
      map['sourceLogsConfiguration'] = sourceLogsConfigurationValue.toMap();
    }
    return map;
  }

  factory CentralizationRuleForOrganizationRuleSource.fromMap(
      Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleSource(
      regions: (map['regions'] as List).cast<String>(),
      scope: map['scope'] as String,
      sourceLogsConfiguration: map['sourceLogsConfiguration'] == null
          ? null
          : CentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration
              .fromMap((map['sourceLogsConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
