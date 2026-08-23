// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_virtual_mfa_device_virtual_mfa_device_args_doc}
/// The set of arguments for VirtualMfaDevice.
/// {@endtemplate}
/// {@macro pulumi_iam_virtual_mfa_device_virtual_mfa_device_args_doc}
class VirtualMfaDeviceArgs {
  /// Path for the virtual MFA device.
  final pulumi.Input<String>? path;
  /// Map of resource tags for the virtual mfa device. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  final pulumi.Input<String> virtualMfaDeviceName;

  /// Creates a new [VirtualMfaDeviceArgs].
  /// [path] Path for the virtual MFA device.
  /// [tags] Map of resource tags for the virtual mfa device. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtualMfaDeviceName] Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  const VirtualMfaDeviceArgs({
    this.path,
    this.tags,
    required this.virtualMfaDeviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'tags': ?tags,
      'virtualMfaDeviceName': virtualMfaDeviceName,
    };
  }

  factory VirtualMfaDeviceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMfaDeviceArgs(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualMfaDeviceName: pulumi.Input.fromValue(map['virtualMfaDeviceName'] as String),
    );
  }
}
