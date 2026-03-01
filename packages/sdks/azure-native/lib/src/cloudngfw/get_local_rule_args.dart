// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_local_rule_args_doc}
/// Arguments for getLocalRule.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_local_rule_args_doc}
class GetLocalRuleArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// Local Rule priority
  final pulumi.Input<String> priority;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLocalRuleArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [priority] Local Rule priority
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLocalRuleArgs({
    required pulumi.Output<String> localRulestackName,
    required pulumi.Output<String> priority,
    required pulumi.Output<String> resourceGroupName,
  }) :
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      priority = pulumi.Input.asInput<String>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'priority': priority,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLocalRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalRuleArgs(
      localRulestackName: pulumi.Output.create<String>(map['localRulestackName'] as String),
      priority: pulumi.Output.create<String>(map['priority'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

