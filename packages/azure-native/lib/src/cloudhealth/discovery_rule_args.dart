// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovery_rule_properties.dart';

/// {@template pulumi_cloudhealth_discovery_rule_args_doc}
/// The set of arguments for DiscoveryRule.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_discovery_rule_args_doc}
class DiscoveryRuleArgs {
  /// Name of the discovery rule. Must be unique within a health model.
  final pulumi.Input<String>? discoveryRuleName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DiscoveryRuleProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DiscoveryRuleArgs].
  /// [discoveryRuleName] Name of the discovery rule. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DiscoveryRuleArgs({
    String? discoveryRuleName,
    required String healthModelName,
    DiscoveryRuleProperties? properties,
    required String resourceGroupName,
  }) :
      discoveryRuleName = pulumi.Input.asOptionalInput<String>(discoveryRuleName),
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      properties = pulumi.Input.asOptionalInput<DiscoveryRuleProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryRuleName': ?discoveryRuleName,
      'healthModelName': healthModelName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DiscoveryRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DiscoveryRuleArgs.fromMap(Map<String, dynamic> map) {
    return DiscoveryRuleArgs(
      discoveryRuleName: map['discoveryRuleName'] == null ? null : map['discoveryRuleName'] as String,
      healthModelName: map['healthModelName'] as String,
      properties: map['properties'] == null ? null : DiscoveryRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

