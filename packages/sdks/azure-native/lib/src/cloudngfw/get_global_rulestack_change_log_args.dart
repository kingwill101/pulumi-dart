// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_global_rulestack_change_log_args_doc}
/// Arguments for getGlobalRulestackChangeLog.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_global_rulestack_change_log_args_doc}
class GetGlobalRulestackChangeLogArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;

  /// Creates a new [GetGlobalRulestackChangeLogArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  GetGlobalRulestackChangeLogArgs({
    required this.globalRulestackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
    };
  }

  factory GetGlobalRulestackChangeLogArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalRulestackChangeLogArgs(
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
    );
  }
}

