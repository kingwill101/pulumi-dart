// ignore_for_file: unused_element, unnecessary_cast

import 'discovery_error_response.dart';

/// Discovery rule properties for an Application Insights topology query
class ApplicationInsightsTopologyDiscoveryRulePropertiesResponse {
  /// Whether to add all recommended signals to the discovered entities.
  final String addRecommendedSignals;
  /// Application Insights resource ID
  final String applicationInsightsResourceId;
  /// Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  final String authenticationSetting;
  /// Date when the discovery rule was (soft-)deleted.
  final String deletionDate;
  /// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  final String discoverRelationships;
  /// Discovery rule relationship discovery behavior
  /// Expected value is 'ApplicationInsightsTopology'.
  final String discoveryRuleKind;
  /// Display name
  final String? displayName;
  /// Name of the entity which represents the discovery rule. Note: It might take a few minutes after creating the discovery rule until the entity is created.
  final String entityName;
  /// Error details if the last discovery operation failed.
  final DiscoveryErrorResponse error;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [ApplicationInsightsTopologyDiscoveryRulePropertiesResponse].
  /// [addRecommendedSignals] Whether to add all recommended signals to the discovered entities.
  /// [applicationInsightsResourceId] Application Insights resource ID
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  /// [deletionDate] Date when the discovery rule was (soft-)deleted.
  /// [discoverRelationships] Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  /// [discoveryRuleKind] Discovery rule relationship discovery behavior
  /// [displayName] Display name
  /// [entityName] Name of the entity which represents the discovery rule. Note: It might take a few minutes after creating the discovery rule until the entity is created.
  /// [error] Error details if the last discovery operation failed.
  /// [provisioningState] The status of the last operation.
  ApplicationInsightsTopologyDiscoveryRulePropertiesResponse({
    required this.addRecommendedSignals,
    required this.applicationInsightsResourceId,
    required this.authenticationSetting,
    required this.deletionDate,
    required this.discoverRelationships,
    required this.discoveryRuleKind,
    this.displayName,
    required this.entityName,
    required this.error,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRecommendedSignals': addRecommendedSignals,
      'applicationInsightsResourceId': applicationInsightsResourceId,
      'authenticationSetting': authenticationSetting,
      'deletionDate': deletionDate,
      'discoverRelationships': discoverRelationships,
      'discoveryRuleKind': discoveryRuleKind,
      'displayName': ?displayName,
      'entityName': entityName,
      'error': error.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory ApplicationInsightsTopologyDiscoveryRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsTopologyDiscoveryRulePropertiesResponse(
      addRecommendedSignals: map['addRecommendedSignals'] as String,
      applicationInsightsResourceId: map['applicationInsightsResourceId'] as String,
      authenticationSetting: map['authenticationSetting'] as String,
      deletionDate: map['deletionDate'] as String,
      discoverRelationships: map['discoverRelationships'] as String,
      discoveryRuleKind: map['discoveryRuleKind'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      entityName: map['entityName'] as String,
      error: DiscoveryErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

