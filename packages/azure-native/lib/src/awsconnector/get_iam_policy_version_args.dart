// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_policy_version_args_doc}
/// Arguments for getIamPolicyVersion.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_policy_version_args_doc}
class GetIamPolicyVersionArgs {
  /// Name of IamPolicyVersion
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamPolicyVersionArgs].
  /// [name] Name of IamPolicyVersion
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIamPolicyVersionArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIamPolicyVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyVersionArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

