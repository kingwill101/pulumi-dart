// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_prefix_list_local_rulestack_args_doc}
/// Arguments for getPrefixListLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_prefix_list_local_rulestack_args_doc}
class GetPrefixListLocalRulestackArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// Local Rule priority
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrefixListLocalRulestackArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [name] Local Rule priority
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrefixListLocalRulestackArgs({
    required this.localRulestackName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrefixListLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetPrefixListLocalRulestackArgs(
      localRulestackName: pulumi.Input.fromValue(map['localRulestackName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

