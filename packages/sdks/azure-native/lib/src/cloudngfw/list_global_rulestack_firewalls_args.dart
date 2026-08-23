// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_global_rulestack_firewalls_args_doc}
/// Arguments for listGlobalRulestackFirewalls.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_global_rulestack_firewalls_args_doc}
class ListGlobalRulestackFirewallsArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;

  /// Creates a new [ListGlobalRulestackFirewallsArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  const ListGlobalRulestackFirewallsArgs({
    required this.globalRulestackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
    };
  }

  factory ListGlobalRulestackFirewallsArgs.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackFirewallsArgs(
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
    );
  }
}
