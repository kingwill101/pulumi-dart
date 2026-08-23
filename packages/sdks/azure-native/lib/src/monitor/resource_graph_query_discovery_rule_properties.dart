// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Discovery rule properties for an Azure Resource Graph query
class ResourceGraphQueryDiscoveryRuleProperties {
  /// Whether to add all recommended signals to the discovered entities.
  final pulumi.Input<String> addRecommendedSignals;
  /// Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  final pulumi.Input<String> authenticationSetting;
  /// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  final pulumi.Input<String> discoverRelationships;
  /// Discovery rule relationship discovery behavior
  /// Expected value is 'ResourceGraphQuery'.
  final pulumi.Input<String> discoveryRuleKind;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Azure Resource Graph query text in KQL syntax. The query must return at least a column named 'id' which contains the resource ID of the discovered resources.
  final pulumi.Input<String> resourceGraphQuery;

  /// Creates a new [ResourceGraphQueryDiscoveryRuleProperties].
  /// [addRecommendedSignals] Whether to add all recommended signals to the discovered entities.
  /// [authenticationSetting] Reference to the name of the authentication setting which is used for querying Azure Resource Graph. The same authentication setting will also be assigned to any discovered entities.
  /// [discoverRelationships] Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
  /// [discoveryRuleKind] Discovery rule relationship discovery behavior
  /// [displayName] Display name
  /// [resourceGraphQuery] Azure Resource Graph query text in KQL syntax. The query must return at least a column named 'id' which contains the resource ID of the discovered resources.
  const ResourceGraphQueryDiscoveryRuleProperties({
    required this.addRecommendedSignals,
    required this.authenticationSetting,
    required this.discoverRelationships,
    required this.discoveryRuleKind,
    this.displayName,
    required this.resourceGraphQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRecommendedSignals': addRecommendedSignals,
      'authenticationSetting': authenticationSetting,
      'discoverRelationships': discoverRelationships,
      'discoveryRuleKind': discoveryRuleKind,
      'displayName': ?displayName,
      'resourceGraphQuery': resourceGraphQuery,
    };
  }

  factory ResourceGraphQueryDiscoveryRuleProperties.fromMap(Map<String, dynamic> map) {
    return ResourceGraphQueryDiscoveryRuleProperties(
      addRecommendedSignals: pulumi.Input.fromValue(map['addRecommendedSignals'] as String),
      authenticationSetting: pulumi.Input.fromValue(map['authenticationSetting'] as String),
      discoverRelationships: pulumi.Input.fromValue(map['discoverRelationships'] as String),
      discoveryRuleKind: pulumi.Input.fromValue(map['discoveryRuleKind'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGraphQuery: pulumi.Input.fromValue(map['resourceGraphQuery'] as String),
    );
  }
}
