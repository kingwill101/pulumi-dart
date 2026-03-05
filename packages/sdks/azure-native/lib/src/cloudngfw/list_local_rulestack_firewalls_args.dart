// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_local_rulestack_firewalls_args_doc}
/// Arguments for listLocalRulestackFirewalls.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_local_rulestack_firewalls_args_doc}
class ListLocalRulestackFirewallsArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListLocalRulestackFirewallsArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListLocalRulestackFirewallsArgs({
    required this.localRulestackName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListLocalRulestackFirewallsArgs.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackFirewallsArgs(
      localRulestackName: pulumi.Input.fromValue(map['localRulestackName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

