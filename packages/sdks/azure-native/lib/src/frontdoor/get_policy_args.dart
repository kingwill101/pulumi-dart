// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_frontdoor_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_get_policy_args_doc}
class GetPolicyArgs {
  /// The name of the Web Application Firewall Policy.
  final pulumi.Input<String> policyName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPolicyArgs].
  /// [policyName] The name of the Web Application Firewall Policy.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  GetPolicyArgs({
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      policyName = pulumi.Input.asInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

