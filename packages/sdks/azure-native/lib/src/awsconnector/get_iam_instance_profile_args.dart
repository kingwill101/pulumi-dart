// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_instance_profile_args_doc}
/// Arguments for getIamInstanceProfile.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_instance_profile_args_doc}
class GetIamInstanceProfileArgs {
  /// Name of IamInstanceProfile
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamInstanceProfileArgs].
  /// [name] Name of IamInstanceProfile
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIamInstanceProfileArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIamInstanceProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetIamInstanceProfileArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
