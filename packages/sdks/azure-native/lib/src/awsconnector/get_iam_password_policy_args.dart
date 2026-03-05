// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_password_policy_args_doc}
/// Arguments for getIamPasswordPolicy.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_password_policy_args_doc}
class GetIamPasswordPolicyArgs {
  /// Name of IamPasswordPolicy
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamPasswordPolicyArgs].
  /// [name] Name of IamPasswordPolicy
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIamPasswordPolicyArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIamPasswordPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPasswordPolicyArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

