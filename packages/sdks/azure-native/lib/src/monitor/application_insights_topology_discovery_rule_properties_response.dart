// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_error_response.dart';

/// Discovery rule properties for an Application Insights topology query
class ApplicationInsightsTopologyDiscoveryRulePropertiesResponse {
  /// Whether to add all recommended signals to the discovered entities.
  final pulumi.Input<String> addRecommendedSignals;

  /// Application Insights resource ID
  final pulumi.Input<String> applicationInsightsResourceId;

  /// Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  final pulumi.Input<String> authenticationSetting;

  /// Date when the discovery rule was (soft-)deleted.
  final pulumi.Input<String> deletionDate;

  /// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  final pulumi.Input<String> discoverRelationships;

  /// Discovery rule relationship discovery behavior
  /// Expected value is 'ApplicationInsightsTopology'.
  final pulumi.Input<String> discoveryRuleKind;

  /// Display name
  final pulumi.Input<String>? displayName;

  /// Name of the entity which represents the discovery rule. Note: It might take a few minutes after creating the discovery rule until the entity is created.
  final pulumi.Input<String> entityName;

  /// Error details if the last discovery operation failed.
  final pulumi.Input<DiscoveryErrorResponse> error;

  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

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
      'error':
          pulumi.Input.mapInputValue<
            DiscoveryErrorResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ApplicationInsightsTopologyDiscoveryRulePropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationInsightsTopologyDiscoveryRulePropertiesResponse(
      addRecommendedSignals: pulumi.Input.fromValue(
        map['addRecommendedSignals'] as String,
      ),
      applicationInsightsResourceId: pulumi.Input.fromValue(
        map['applicationInsightsResourceId'] as String,
      ),
      authenticationSetting: pulumi.Input.fromValue(
        map['authenticationSetting'] as String,
      ),
      deletionDate: pulumi.Input.fromValue(map['deletionDate'] as String),
      discoverRelationships: pulumi.Input.fromValue(
        map['discoverRelationships'] as String,
      ),
      discoveryRuleKind: pulumi.Input.fromValue(
        map['discoveryRuleKind'] as String,
      ),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      entityName: pulumi.Input.fromValue(map['entityName'] as String),
      error: pulumi.Input.fromValue(
        DiscoveryErrorResponse.fromMap(
          (map['error']! as Map).cast<String, dynamic>(),
        ),
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
