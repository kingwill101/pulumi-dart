// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_rule_destination_configuration_cloudtrail_parameters_advanced_event_selector_field_selector.dart';

class TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector {
  /// List of field selectors that compose the selector statement. See `fieldSelectors` below.
  final pulumi.Input<List<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector>?>? fieldSelectors;
  /// Descriptive name for the advanced event selector.
  final pulumi.Input<String?>? name;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector].
  /// [fieldSelectors] List of field selectors that compose the selector statement. See `fieldSelectors` below.
  /// [name] Descriptive name for the advanced event selector.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector({
    this.fieldSelectors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelectors': ?pulumi.Input.mapOptionalInputValue<List<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector>, List<Map<String, dynamic>>>(fieldSelectors, (value) => pulumi.Input.encodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector(
      fieldSelectors: (() { final guardedValue = map['fieldSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector>(guardedValue, (value) => TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
