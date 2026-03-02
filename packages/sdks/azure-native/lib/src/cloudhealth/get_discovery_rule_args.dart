// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhealth_get_discovery_rule_args_doc}
/// Arguments for getDiscoveryRule.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_get_discovery_rule_args_doc}
class GetDiscoveryRuleArgs {
  /// Name of the discovery rule. Must be unique within a health model.
  final pulumi.Input<String> discoveryRuleName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiscoveryRuleArgs].
  /// [discoveryRuleName] Name of the discovery rule. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiscoveryRuleArgs({
    required this.discoveryRuleName,
    required this.healthModelName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryRuleName': discoveryRuleName,
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiscoveryRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveryRuleArgs(
      discoveryRuleName: (map['discoveryRuleName'] as String).input(),
      healthModelName: (map['healthModelName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

