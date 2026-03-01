// ignore_for_file: unused_element, unnecessary_cast


/// Discovery rule properties
class DiscoveryRulePropertiesResponse {
  /// Whether to add all recommended signals to the discovered entities.
  final String addRecommendedSignals;
  /// Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  final String authenticationSetting;
  /// Date when the discovery rule was (soft-)deleted.
  final String deletionDate;
  /// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  final String discoverRelationships;
  /// Display name
  final String? displayName;
  /// Name of the entity which represents the discovery rule. Note: It might take a few minutes after creating the discovery rule until the entity is created.
  final String entityName;
  /// Error message if the last discovery operation failed.
  final String errorMessage;
  /// Number of discovered entities in the last discovery operation.
  final int numberOfDiscoveredEntities;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Graph query text in KQL syntax. The query must return at least a column named 'id' which contains the resource ID of the discovered resources.
  final String resourceGraphQuery;

  /// Creates a new [DiscoveryRulePropertiesResponse].
  /// [addRecommendedSignals] Whether to add all recommended signals to the discovered entities.
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  /// [deletionDate] Date when the discovery rule was (soft-)deleted.
  /// [discoverRelationships] Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  /// [displayName] Display name
  /// [entityName] Name of the entity which represents the discovery rule. Note: It might take a few minutes after creating the discovery rule until the entity is created.
  /// [errorMessage] Error message if the last discovery operation failed.
  /// [numberOfDiscoveredEntities] Number of discovered entities in the last discovery operation.
  /// [provisioningState] The status of the last operation.
  /// [resourceGraphQuery] Azure Resource Graph query text in KQL syntax. The query must return at least a column named 'id' which contains the resource ID of the discovered resources.
  DiscoveryRulePropertiesResponse({
    required this.addRecommendedSignals,
    required this.authenticationSetting,
    required this.deletionDate,
    required this.discoverRelationships,
    this.displayName,
    required this.entityName,
    required this.errorMessage,
    required this.numberOfDiscoveredEntities,
    required this.provisioningState,
    required this.resourceGraphQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRecommendedSignals': addRecommendedSignals,
      'authenticationSetting': authenticationSetting,
      'deletionDate': deletionDate,
      'discoverRelationships': discoverRelationships,
      'displayName': ?displayName,
      'entityName': entityName,
      'errorMessage': errorMessage,
      'numberOfDiscoveredEntities': numberOfDiscoveredEntities,
      'provisioningState': provisioningState,
      'resourceGraphQuery': resourceGraphQuery,
    };
  }

  factory DiscoveryRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryRulePropertiesResponse(
      addRecommendedSignals: map['addRecommendedSignals'] as String,
      authenticationSetting: map['authenticationSetting'] as String,
      deletionDate: map['deletionDate'] as String,
      discoverRelationships: map['discoverRelationships'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      entityName: map['entityName'] as String,
      errorMessage: map['errorMessage'] as String,
      numberOfDiscoveredEntities: map['numberOfDiscoveredEntities'] as int,
      provisioningState: map['provisioningState'] as String,
      resourceGraphQuery: map['resourceGraphQuery'] as String,
    );
  }
}

