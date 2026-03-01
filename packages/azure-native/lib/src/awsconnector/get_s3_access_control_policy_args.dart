// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_s3_access_control_policy_args_doc}
/// Arguments for getS3AccessControlPolicy.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_s3_access_control_policy_args_doc}
class GetS3AccessControlPolicyArgs {
  /// Name of S3AccessControlPolicy
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetS3AccessControlPolicyArgs].
  /// [name] Name of S3AccessControlPolicy
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetS3AccessControlPolicyArgs({
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

  factory GetS3AccessControlPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetS3AccessControlPolicyArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

