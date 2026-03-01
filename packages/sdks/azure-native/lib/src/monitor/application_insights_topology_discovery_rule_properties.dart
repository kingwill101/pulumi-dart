// ignore_for_file: unused_element, unnecessary_cast


/// Discovery rule properties for an Application Insights topology query
class ApplicationInsightsTopologyDiscoveryRuleProperties {
  /// Whether to add all recommended signals to the discovered entities.
  final String addRecommendedSignals;
  /// Application Insights resource ID
  final String applicationInsightsResourceId;
  /// Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  final String authenticationSetting;
  /// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  final String discoverRelationships;
  /// Discovery rule relationship discovery behavior
  /// Expected value is 'ApplicationInsightsTopology'.
  final String discoveryRuleKind;
  /// Display name
  final String? displayName;

  /// Creates a new [ApplicationInsightsTopologyDiscoveryRuleProperties].
  /// [addRecommendedSignals] Whether to add all recommended signals to the discovered entities.
  /// [applicationInsightsResourceId] Application Insights resource ID
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  /// [discoverRelationships] Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  /// [discoveryRuleKind] Discovery rule relationship discovery behavior
  /// [displayName] Display name
  ApplicationInsightsTopologyDiscoveryRuleProperties({
    required this.addRecommendedSignals,
    required this.applicationInsightsResourceId,
    required this.authenticationSetting,
    required this.discoverRelationships,
    required this.discoveryRuleKind,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRecommendedSignals': addRecommendedSignals,
      'applicationInsightsResourceId': applicationInsightsResourceId,
      'authenticationSetting': authenticationSetting,
      'discoverRelationships': discoverRelationships,
      'discoveryRuleKind': discoveryRuleKind,
      'displayName': ?displayName,
    };
  }

  factory ApplicationInsightsTopologyDiscoveryRuleProperties.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsTopologyDiscoveryRuleProperties(
      addRecommendedSignals: map['addRecommendedSignals'] as String,
      applicationInsightsResourceId: map['applicationInsightsResourceId'] as String,
      authenticationSetting: map['authenticationSetting'] as String,
      discoverRelationships: map['discoverRelationships'] as String,
      discoveryRuleKind: map['discoveryRuleKind'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}

