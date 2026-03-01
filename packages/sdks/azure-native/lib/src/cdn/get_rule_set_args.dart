// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_rule_set_args_doc}
/// Arguments for getRuleSet.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_rule_set_args_doc}
class GetRuleSetArgs {
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the rule set under the profile which is unique globally.
  final pulumi.Input<String> ruleSetName;

  /// Creates a new [GetRuleSetArgs].
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleSetName] Name of the rule set under the profile which is unique globally.
  GetRuleSetArgs({
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleSetName,
  }) :
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleSetName = pulumi.Input.asInput<String>(ruleSetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'ruleSetName': ruleSetName,
    };
  }

  factory GetRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleSetArgs(
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleSetName: pulumi.Output.create<String>(map['ruleSetName'] as String),
    );
  }
}

