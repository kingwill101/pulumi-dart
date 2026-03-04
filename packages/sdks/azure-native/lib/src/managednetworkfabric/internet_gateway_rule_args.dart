// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_properties.dart';

/// {@template pulumi_managednetworkfabric_internet_gateway_rule_args_doc}
/// The set of arguments for InternetGatewayRule.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_internet_gateway_rule_args_doc}
class InternetGatewayRuleArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;

  /// Name of the Internet Gateway rule.
  final pulumi.Input<String>? internetGatewayRuleName;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Rules for the InternetGateways
  final pulumi.Input<RuleProperties> ruleProperties;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InternetGatewayRuleArgs].
  /// [annotation] Switch configuration description.
  /// [internetGatewayRuleName] Name of the Internet Gateway rule.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleProperties] Rules for the InternetGateways
  /// [tags] Resource tags.
  InternetGatewayRuleArgs({
    this.annotation,
    this.internetGatewayRuleName,
    this.location,
    required this.resourceGroupName,
    required this.ruleProperties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'internetGatewayRuleName': ?internetGatewayRuleName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'ruleProperties':
          pulumi.Input.mapInputValue<RuleProperties, Map<String, dynamic>>(
            ruleProperties,
            (value) => value.toMap(),
          ),
      'tags': ?tags,
    };
  }

  factory InternetGatewayRuleArgs.fromMap(Map<String, dynamic> map) {
    return InternetGatewayRuleArgs(
      annotation: (() {
        final guardedValue = map['annotation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internetGatewayRuleName: (() {
        final guardedValue = map['internetGatewayRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      ruleProperties: pulumi.Input.fromValue(
        RuleProperties.fromMap(
          (map['ruleProperties']! as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
