// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_ddos_custom_policy_args_doc}
/// Arguments for getDdosCustomPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_get_ddos_custom_policy_args_doc}
class GetDdosCustomPolicyArgs {
  /// The name of the DDoS custom policy.
  final pulumi.Input<String> ddosCustomPolicyName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDdosCustomPolicyArgs].
  /// [ddosCustomPolicyName] The name of the DDoS custom policy.
  /// [resourceGroupName] The name of the resource group.
  GetDdosCustomPolicyArgs({
    required String ddosCustomPolicyName,
    required String resourceGroupName,
  }) :
      ddosCustomPolicyName = pulumi.Input.asInput<String>(ddosCustomPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosCustomPolicyName': ddosCustomPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDdosCustomPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDdosCustomPolicyArgs(
      ddosCustomPolicyName: map['ddosCustomPolicyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

