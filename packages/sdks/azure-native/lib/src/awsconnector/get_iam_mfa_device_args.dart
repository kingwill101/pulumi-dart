// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_mfa_device_args_doc}
/// Arguments for getIamMfaDevice.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_mfa_device_args_doc}
class GetIamMfaDeviceArgs {
  /// Name of IamMFADevice
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamMfaDeviceArgs].
  /// [name] Name of IamMFADevice
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIamMfaDeviceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIamMfaDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetIamMfaDeviceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
