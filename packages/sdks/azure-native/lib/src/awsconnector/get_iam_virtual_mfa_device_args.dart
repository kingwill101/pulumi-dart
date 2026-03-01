// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_virtual_mfa_device_args_doc}
/// Arguments for getIamVirtualMfaDevice.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_virtual_mfa_device_args_doc}
class GetIamVirtualMfaDeviceArgs {
  /// Name of IamVirtualMFADevice
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamVirtualMfaDeviceArgs].
  /// [name] Name of IamVirtualMFADevice
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIamVirtualMfaDeviceArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIamVirtualMfaDeviceArgs.fromMap(Map<String, dynamic> map) {
    return GetIamVirtualMfaDeviceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

