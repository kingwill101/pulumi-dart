// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_rule_destination_configuration_cloudtrail_parameters_advanced_event_selector.dart';

class TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParameters {
  /// List of advanced event selectors used to filter CloudTrail events. See `advancedEventSelectors` below.
  final pulumi.Input<List<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector>>? advancedEventSelectors;

  /// Creates a new [TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParameters].
  /// [advancedEventSelectors] List of advanced event selectors used to filter CloudTrail events. See `advancedEventSelectors` below.
  const TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParameters({
    this.advancedEventSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedEventSelectors': ?pulumi.Input.mapOptionalInputValue<List<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector>, List<Map<String, dynamic>>>(advancedEventSelectors, (value) => pulumi.Input.encodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParameters.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParameters(
      advancedEventSelectors: (() { final guardedValue = map['advancedEventSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector>(guardedValue, (value) => TelemetryRuleForOrganizationRuleDestinationConfigurationCloudtrailParametersAdvancedEventSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
