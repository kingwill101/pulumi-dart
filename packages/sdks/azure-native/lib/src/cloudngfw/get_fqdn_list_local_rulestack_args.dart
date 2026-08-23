// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_fqdn_list_local_rulestack_args_doc}
/// Arguments for getFqdnListLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_fqdn_list_local_rulestack_args_doc}
class GetFqdnListLocalRulestackArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// fqdn list name
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFqdnListLocalRulestackArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [name] fqdn list name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetFqdnListLocalRulestackArgs({
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

  factory GetFqdnListLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetFqdnListLocalRulestackArgs(
      localRulestackName: pulumi.Input.fromValue(map['localRulestackName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
