// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_rule_args_doc}
/// Arguments for getRule.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_rule_args_doc}
class GetRuleArgs {
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the delivery rule which is unique within the endpoint.
  final pulumi.Input<String> ruleName;
  /// Name of the rule set under the profile which is unique globally.
  final pulumi.Input<String> ruleSetName;

  /// Creates a new [GetRuleArgs].
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] Name of the delivery rule which is unique within the endpoint.
  /// [ruleSetName] Name of the rule set under the profile which is unique globally.
  GetRuleArgs({
    required this.profileName,
    required this.resourceGroupName,
    required this.ruleName,
    required this.ruleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
      'ruleSetName': ruleSetName,
    };
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      ruleSetName: (map['ruleSetName'] as String).input(),
    );
  }
}

