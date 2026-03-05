// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_local_rulestack_change_log_args_doc}
/// Arguments for getLocalRulestackChangeLog.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_local_rulestack_change_log_args_doc}
class GetLocalRulestackChangeLogArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLocalRulestackChangeLogArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLocalRulestackChangeLogArgs({
    required this.localRulestackName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLocalRulestackChangeLogArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackChangeLogArgs(
      localRulestackName: pulumi.Input.fromValue(map['localRulestackName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

