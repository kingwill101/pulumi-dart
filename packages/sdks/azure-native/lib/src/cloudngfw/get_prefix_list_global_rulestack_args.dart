// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_prefix_list_global_rulestack_args_doc}
/// Arguments for getPrefixListGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_prefix_list_global_rulestack_args_doc}
class GetPrefixListGlobalRulestackArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// Local Rule priority
  final pulumi.Input<String> name;

  /// Creates a new [GetPrefixListGlobalRulestackArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [name] Local Rule priority
  GetPrefixListGlobalRulestackArgs({
    required pulumi.Output<String> globalRulestackName,
    required pulumi.Output<String> name,
  }) :
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'name': name,
    };
  }

  factory GetPrefixListGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetPrefixListGlobalRulestackArgs(
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

