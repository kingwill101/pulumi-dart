// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule_destination_configuration_cloudtrail_parameters_advanced_event_selector_field_selector.dart';

class TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector {
  /// List of field selectors that compose the selector statement. See `fieldSelectors` below.
  final pulumi.Input<List<TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector>?>? fieldSelectors;
  /// Descriptive name for the advanced event selector.
  final pulumi.Input<String?>? name;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector].
  /// [fieldSelectors] List of field selectors that compose the selector statement. See `fieldSelectors` below.
  /// [name] Descriptive name for the advanced event selector.
  const TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector({
    this.fieldSelectors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSelectors': ?pulumi.Input.mapOptionalInputValue<List<TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector>, List<Map<String, dynamic>>>(fieldSelectors, (value) => pulumi.Input.encodeList<TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector(
      fieldSelectors: (() { final guardedValue = map['fieldSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector>(guardedValue, (value) => TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelectorFieldSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
