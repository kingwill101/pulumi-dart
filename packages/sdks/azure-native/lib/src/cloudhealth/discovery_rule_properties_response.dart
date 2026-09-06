// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Discovery rule properties
class DiscoveryRulePropertiesResponse {
  /// Whether to add all recommended signals to the discovered entities.
  final pulumi.Input<String> addRecommendedSignals;
  /// Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  final pulumi.Input<String> authenticationSetting;
  /// Date when the discovery rule was (soft-)deleted.
  final pulumi.Input<String> deletionDate;
  /// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  final pulumi.Input<String> discoverRelationships;
  /// Display name
  final pulumi.Input<String?>? displayName;
  /// Name of the entity which represents the discovery rule. Note: It might take a few minutes after creating the discovery rule until the entity is created.
  final pulumi.Input<String> entityName;
  /// Error message if the last discovery operation failed.
  final pulumi.Input<String> errorMessage;
  /// Number of discovered entities in the last discovery operation.
  final pulumi.Input<int> numberOfDiscoveredEntities;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Azure Resource Graph query text in KQL syntax. The query must return at least a column named 'id' which contains the resource ID of the discovered resources.
  final pulumi.Input<String> resourceGraphQuery;

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
  const DiscoveryRulePropertiesResponse({
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
      addRecommendedSignals: pulumi.Input.fromValue(map['addRecommendedSignals'] as String),
      authenticationSetting: pulumi.Input.fromValue(map['authenticationSetting'] as String),
      deletionDate: pulumi.Input.fromValue(map['deletionDate'] as String),
      discoverRelationships: pulumi.Input.fromValue(map['discoverRelationships'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityName: pulumi.Input.fromValue(map['entityName'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      numberOfDiscoveredEntities: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['numberOfDiscoveredEntities'])),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGraphQuery: pulumi.Input.fromValue(map['resourceGraphQuery'] as String),
    );
  }
}
