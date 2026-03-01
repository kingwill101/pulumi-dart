// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_global_rulestack_args_doc}
/// Arguments for getGlobalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_global_rulestack_args_doc}
class GetGlobalRulestackArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;

  /// Creates a new [GetGlobalRulestackArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  GetGlobalRulestackArgs({
    required String globalRulestackName,
  }) :
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
    };
  }

  factory GetGlobalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalRulestackArgs(
      globalRulestackName: map['globalRulestackName'] as String,
    );
  }
}

