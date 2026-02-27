// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VirtualMfaDevice.
class VirtualMfaDeviceArgs {
  /// Path for the virtual MFA device.
  final Input<String>? path;

  /// Map of resource tags for the virtual mfa device. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
  final Input<String> virtualMfaDeviceName;

  VirtualMfaDeviceArgs({
    this.path,
    this.tags,
    required this.virtualMfaDeviceName,
  });

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
      path: Input.asOptionalInput<String>(map['path']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      virtualMfaDeviceName: Input.asInput<String>(map['virtualMfaDeviceName']),
    );
  }
}
