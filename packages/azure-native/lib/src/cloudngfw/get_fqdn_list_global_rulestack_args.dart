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
  GetFqdnListGlobalRulestackArgs({
    required String globalRulestackName,
    required String name,
  }) :
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'name': name,
    };
  }

  factory GetFqdnListGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetFqdnListGlobalRulestackArgs(
      globalRulestackName: map['globalRulestackName'] as String,
      name: map['name'] as String,
    );
  }
}

