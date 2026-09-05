// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule_destination_configuration_cloudtrail_parameters_advanced_event_selector.dart';

class TelemetryRuleRuleDestinationConfigurationCloudtrailParameters {
  /// List of advanced event selectors used to filter CloudTrail events. See `advancedEventSelectors` below.
  final pulumi.Input<List<TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector>?>? advancedEventSelectors;

  /// Creates a new [TelemetryRuleRuleDestinationConfigurationCloudtrailParameters].
  /// [advancedEventSelectors] List of advanced event selectors used to filter CloudTrail events. See `advancedEventSelectors` below.
  const TelemetryRuleRuleDestinationConfigurationCloudtrailParameters({
    this.advancedEventSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedEventSelectors': ?pulumi.Input.mapOptionalInputValue<List<TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector>, List<Map<String, dynamic>>>(advancedEventSelectors, (value) => pulumi.Input.encodeList<TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TelemetryRuleRuleDestinationConfigurationCloudtrailParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleRuleDestinationConfigurationCloudtrailParameters(
      advancedEventSelectors: (() { final guardedValue = map['advancedEventSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector>(guardedValue, (value) => TelemetryRuleRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
