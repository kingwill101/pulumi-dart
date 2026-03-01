// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_local_rulestack_args_doc}
/// Arguments for getLocalRulestack.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_local_rulestack_args_doc}
class GetLocalRulestackArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLocalRulestackArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLocalRulestackArgs({
    required String localRulestackName,
    required String resourceGroupName,
  }) :
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLocalRulestackArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackArgs(
      localRulestackName: map['localRulestackName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

