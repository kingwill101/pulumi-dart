// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_rule_destination_configuration_waf_logging_parameters_logging_filter_filter.dart';

class TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilter {
  /// Default action for log records that do not match any filter. Valid values: `KEEP`, `DROP`.
  final pulumi.Input<String>? defaultBehavior;
  /// List of filter configurations. See `filters` below.
  final pulumi.Input<List<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter>>? filters;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilter].
  /// [defaultBehavior] Default action for log records that do not match any filter. Valid values: `KEEP`, `DROP`.
  /// [filters] List of filter configurations. See `filters` below.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilter({
    this.defaultBehavior,
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBehavior': ?defaultBehavior,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilter.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilter(
      defaultBehavior: (() { final guardedValue = map['defaultBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter>(guardedValue, (value) => TelemetryRuleForOrganizationRuleDestinationConfigurationWafLoggingParametersLoggingFilterFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
