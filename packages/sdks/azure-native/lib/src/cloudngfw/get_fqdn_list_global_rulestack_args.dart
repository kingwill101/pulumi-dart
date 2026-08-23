// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_fqdn_list_global_rulestack_args_doc}
/// Arguments for getFqdnListGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_fqdn_list_global_rulestack_args_doc}
class GetFqdnListGlobalRulestackArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// fqdn list name
  final pulumi.Input<String> name;

  /// Creates a new [GetFqdnListGlobalRulestackArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [name] fqdn list name
  const GetFqdnListGlobalRulestackArgs({
    required this.globalRulestackName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'name': name,
    };
  }

  factory GetFqdnListGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetFqdnListGlobalRulestackArgs(
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
