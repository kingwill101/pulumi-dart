// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_role_args_doc}
/// Arguments for getIamRole.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_role_args_doc}
class GetIamRoleArgs {
  /// Name of IamRole
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamRoleArgs].
  /// [name] Name of IamRole
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIamRoleArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIamRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetIamRoleArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

