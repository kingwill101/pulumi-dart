// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Discovery rule properties
class DiscoveryRuleProperties {
  /// Whether to add all recommended signals to the discovered entities.
  final pulumi.Input<String> addRecommendedSignals;
  /// Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  final pulumi.Input<String> authenticationSetting;
  /// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  final pulumi.Input<String> discoverRelationships;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Azure Resource Graph query text in KQL syntax. The query must return at least a column named 'id' which contains the resource ID of the discovered resources.
  final pulumi.Input<String> resourceGraphQuery;

  /// Creates a new [DiscoveryRuleProperties].
  /// [addRecommendedSignals] Whether to add all recommended signals to the discovered entities.
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  /// [discoverRelationships] Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  /// [displayName] Display name
  /// [resourceGraphQuery] Azure Resource Graph query text in KQL syntax. The query must return at least a column named 'id' which contains the resource ID of the discovered resources.
  DiscoveryRuleProperties({
    required this.addRecommendedSignals,
    required this.authenticationSetting,
    required this.discoverRelationships,
    this.displayName,
    required this.resourceGraphQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRecommendedSignals': addRecommendedSignals,
      'authenticationSetting': authenticationSetting,
      'discoverRelationships': discoverRelationships,
      'displayName': ?displayName,
      'resourceGraphQuery': resourceGraphQuery,
    };
  }

  factory DiscoveryRuleProperties.fromMap(Map<String, dynamic> map) {
    return DiscoveryRuleProperties(
      addRecommendedSignals: (map['addRecommendedSignals'] as String).input(),
      authenticationSetting: (map['authenticationSetting'] as String).input(),
      discoverRelationships: (map['discoverRelationships'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      resourceGraphQuery: (map['resourceGraphQuery'] as String).input(),
    );
  }
}

