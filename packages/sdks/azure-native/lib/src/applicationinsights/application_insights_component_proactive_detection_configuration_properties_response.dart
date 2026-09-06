// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_component_proactive_detection_configuration_properties_response_rule_definitions.dart';

/// Properties that define a ProactiveDetection configuration.
class ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse {
  /// Custom email addresses for this rule notifications
  final pulumi.Input<List<String>?>? customEmails;
  /// A flag that indicates whether this rule is enabled by the user
  final pulumi.Input<bool?>? enabled;
  /// The last time this rule was updated
  final pulumi.Input<String> lastUpdatedTime;
  /// The rule name
  final pulumi.Input<String> name;
  /// Static definitions of the ProactiveDetection configuration rule (same values for all components).
  final pulumi.Input<ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions?>? ruleDefinitions;
  /// A flag that indicated whether notifications on this rule should be sent to subscription owners
  final pulumi.Input<bool?>? sendEmailsToSubscriptionOwners;

  /// Creates a new [ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse].
  /// [customEmails] Custom email addresses for this rule notifications
  /// [enabled] A flag that indicates whether this rule is enabled by the user
  /// [lastUpdatedTime] The last time this rule was updated
  /// [name] The rule name
  /// [ruleDefinitions] Static definitions of the ProactiveDetection configuration rule (same values for all components).
  /// [sendEmailsToSubscriptionOwners] A flag that indicated whether notifications on this rule should be sent to subscription owners
  const ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse({
    this.customEmails,
    this.enabled,
    required this.lastUpdatedTime,
    required this.name,
    this.ruleDefinitions,
    this.sendEmailsToSubscriptionOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEmails': ?customEmails,
      'enabled': ?enabled,
      'lastUpdatedTime': lastUpdatedTime,
      'name': name,
      'ruleDefinitions': ?pulumi.Input.mapOptionalInputValue<ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions, Map<String, dynamic>>(ruleDefinitions, (value) => value.toMap()),
      'sendEmailsToSubscriptionOwners': ?sendEmailsToSubscriptionOwners,
    };
  }

  factory ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse(
      customEmails: (() { final guardedValue = map['customEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastUpdatedTime: pulumi.Input.fromValue(map['lastUpdatedTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      ruleDefinitions: (() { final guardedValue = map['ruleDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sendEmailsToSubscriptionOwners: (() { final guardedValue = map['sendEmailsToSubscriptionOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
