// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_virtual_mfa_device_virtual_mfa_device_args_doc}
/// The set of arguments for VirtualMfaDevice.
/// {@endtemplate}
/// {@macro pulumi_iam_virtual_mfa_device_virtual_mfa_device_args_doc}
class VirtualMfaDeviceArgs {
  /// Path for the virtual MFA device.
  final pulumi.Input<String>? path;
  /// Map of resource tags for the virtual mfa device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  final pulumi.Input<String> virtualMfaDeviceName;

  /// Creates a new [VirtualMfaDeviceArgs].
  /// [path] Path for the virtual MFA device.
  /// [tags] Map of resource tags for the virtual mfa device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtualMfaDeviceName] Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  VirtualMfaDeviceArgs({
    pulumi.Output<String>? path,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> virtualMfaDeviceName,
  }) :
      path = pulumi.Input.asOptionalInput<String>(path),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualMfaDeviceName = pulumi.Input.asInput<String>(virtualMfaDeviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'tags': ?tags,
      'virtualMfaDeviceName': virtualMfaDeviceName,
    };
  }

  factory VirtualMfaDeviceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMfaDeviceArgs(
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualMfaDeviceName: pulumi.Output.create<String>(map['virtualMfaDeviceName'] as String),
    );
  }
}

