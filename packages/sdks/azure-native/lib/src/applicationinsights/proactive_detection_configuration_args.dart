// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_component_proactive_detection_configuration_properties_rule_definitions.dart';

/// {@template pulumi_applicationinsights_proactive_detection_configuration_args_doc}
/// The set of arguments for ProactiveDetectionConfiguration.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_proactive_detection_configuration_args_doc}
class ProactiveDetectionConfigurationArgs {
  /// The ProactiveDetection configuration ID. This is unique within a Application Insights component.
  final pulumi.Input<String>? configurationId;
  /// Custom email addresses for this rule notifications
  final pulumi.Input<List<String>>? customEmails;
  /// A flag that indicates whether this rule is enabled by the user
  final pulumi.Input<bool>? enabled;
  /// Resource location
  final pulumi.Input<String>? location;
  /// Azure resource name
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;
  /// Static definitions of the ProactiveDetection configuration rule (same values for all components).
  final pulumi.Input<ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitions>? ruleDefinitions;
  /// A flag that indicated whether notifications on this rule should be sent to subscription owners
  final pulumi.Input<bool>? sendEmailsToSubscriptionOwners;

  /// Creates a new [ProactiveDetectionConfigurationArgs].
  /// [configurationId] The ProactiveDetection configuration ID. This is unique within a Application Insights component.
  /// [customEmails] Custom email addresses for this rule notifications
  /// [enabled] A flag that indicates whether this rule is enabled by the user
  /// [location] Resource location
  /// [name] Azure resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [ruleDefinitions] Static definitions of the ProactiveDetection configuration rule (same values for all components).
  /// [sendEmailsToSubscriptionOwners] A flag that indicated whether notifications on this rule should be sent to subscription owners
  ProactiveDetectionConfigurationArgs({
    this.configurationId,
    this.customEmails,
    this.enabled,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.resourceName,
    this.ruleDefinitions,
    this.sendEmailsToSubscriptionOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationId': ?configurationId,
      'customEmails': ?customEmails,
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'ruleDefinitions': ?pulumi.Input.mapOptionalInputValue<ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitions, Map<String, dynamic>>(ruleDefinitions, (value) => value.toMap()),
      'sendEmailsToSubscriptionOwners': ?sendEmailsToSubscriptionOwners,
    };
  }

  factory ProactiveDetectionConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ProactiveDetectionConfigurationArgs(
      configurationId: map['configurationId'] == null ? null : (map['configurationId'] as String).input(),
      customEmails: map['customEmails'] == null ? null : ((map['customEmails'] as List).cast<String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      ruleDefinitions: map['ruleDefinitions'] == null ? null : (ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitions.fromMap((map['ruleDefinitions'] as Map).cast<String, dynamic>())).input(),
      sendEmailsToSubscriptionOwners: map['sendEmailsToSubscriptionOwners'] == null ? null : (map['sendEmailsToSubscriptionOwners'] as bool).input(),
    );
  }
}

