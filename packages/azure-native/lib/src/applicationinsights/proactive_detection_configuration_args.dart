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
    String? configurationId,
    List<String>? customEmails,
    bool? enabled,
    String? location,
    String? name,
    required String resourceGroupName,
    required String resourceName,
    ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitions? ruleDefinitions,
    bool? sendEmailsToSubscriptionOwners,
  }) :
      configurationId = pulumi.Input.asOptionalInput<String>(configurationId),
      customEmails = pulumi.Input.asOptionalInput<List<String>>(customEmails),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      ruleDefinitions = pulumi.Input.asOptionalInput<ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitions>(ruleDefinitions),
      sendEmailsToSubscriptionOwners = pulumi.Input.asOptionalInput<bool>(sendEmailsToSubscriptionOwners);

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
      configurationId: map['configurationId'] == null ? null : map['configurationId'] as String,
      customEmails: map['customEmails'] == null ? null : (map['customEmails'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      ruleDefinitions: map['ruleDefinitions'] == null ? null : ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitions.fromMap((map['ruleDefinitions'] as Map).cast<String, dynamic>()),
      sendEmailsToSubscriptionOwners: map['sendEmailsToSubscriptionOwners'] == null ? null : map['sendEmailsToSubscriptionOwners'] as bool,
    );
  }
}

