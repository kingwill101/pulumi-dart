// ignore_for_file: unused_element, unnecessary_cast

import 'application_insights_component_proactive_detection_configuration_properties_response_rule_definitions.dart';

/// Properties that define a ProactiveDetection configuration.
class ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse {
  /// Custom email addresses for this rule notifications
  final List<String>? customEmails;
  /// A flag that indicates whether this rule is enabled by the user
  final bool? enabled;
  /// The last time this rule was updated
  final String lastUpdatedTime;
  /// The rule name
  final String name;
  /// Static definitions of the ProactiveDetection configuration rule (same values for all components).
  final ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions? ruleDefinitions;
  /// A flag that indicated whether notifications on this rule should be sent to subscription owners
  final bool? sendEmailsToSubscriptionOwners;

  /// Creates a new [ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse].
  /// [customEmails] Custom email addresses for this rule notifications
  /// [enabled] A flag that indicates whether this rule is enabled by the user
  /// [lastUpdatedTime] The last time this rule was updated
  /// [name] The rule name
  /// [ruleDefinitions] Static definitions of the ProactiveDetection configuration rule (same values for all components).
  /// [sendEmailsToSubscriptionOwners] A flag that indicated whether notifications on this rule should be sent to subscription owners
  ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse({
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
      'ruleDefinitions': ?ruleDefinitions == null ? null : ruleDefinitions!.toMap(),
      'sendEmailsToSubscriptionOwners': ?sendEmailsToSubscriptionOwners,
    };
  }

  factory ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse(
      customEmails: map['customEmails'] == null ? null : (map['customEmails'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      lastUpdatedTime: map['lastUpdatedTime'] as String,
      name: map['name'] as String,
      ruleDefinitions: map['ruleDefinitions'] == null ? null : ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponseRuleDefinitions.fromMap((map['ruleDefinitions'] as Map).cast<String, dynamic>()),
      sendEmailsToSubscriptionOwners: map['sendEmailsToSubscriptionOwners'] == null ? null : map['sendEmailsToSubscriptionOwners'] as bool,
    );
  }
}

