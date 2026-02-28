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
    String? path,
    Map<String, String>? tags,
    required String virtualMfaDeviceName,
  })  : path = pulumi.Input.asOptionalInput<String>(path),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        virtualMfaDeviceName =
            pulumi.Input.asInput<String>(virtualMfaDeviceName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['virtualMfaDeviceName'] = virtualMfaDeviceName;
    return map;
  }

  factory VirtualMfaDeviceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMfaDeviceArgs(
      path: map['path'] == null ? null : map['path'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      virtualMfaDeviceName: map['virtualMfaDeviceName'] as String,
    );
  }
}
