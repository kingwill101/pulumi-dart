// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_policy_args_doc}
class GetPolicyArgs {
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the Policy tracked resource.
  final pulumi.Input<String> policyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPolicyArgs].
  /// [namespaceName] The name of the namespace.
  /// [policyName] The name of the Policy tracked resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPolicyArgs({
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      policyName = pulumi.Input.asInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

