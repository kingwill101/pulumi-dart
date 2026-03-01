// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_rule_set_args_doc}
/// The set of arguments for RuleSet.
/// {@endtemplate}
/// {@macro pulumi_cdn_rule_set_args_doc}
class RuleSetArgs {
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the rule set under the profile which is unique globally.
  final pulumi.Input<String>? ruleSetName;

  /// Creates a new [RuleSetArgs].
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleSetName] Name of the rule set under the profile which is unique globally.
  RuleSetArgs({
    required String profileName,
    required String resourceGroupName,
    String? ruleSetName,
  }) :
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleSetName = pulumi.Input.asOptionalInput<String>(ruleSetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'ruleSetName': ?ruleSetName,
    };
  }

  factory RuleSetArgs.fromMap(Map<String, dynamic> map) {
    return RuleSetArgs(
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleSetName: map['ruleSetName'] == null ? null : map['ruleSetName'] as String,
    );
  }
}

