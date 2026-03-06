// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the IP tag associated with the public IP address.
class VirtualMachineIpTagResponse {
  /// IP tag type. Example: FirstPartyUsage.
  final pulumi.Input<String>? ipTagType;
  /// IP tag associated with the public IP. Example: SQL, Storage etc.
  final pulumi.Input<String>? tag;

  /// Creates a new [VirtualMachineIpTagResponse].
  /// [ipTagType] IP tag type. Example: FirstPartyUsage.
  /// [tag] IP tag associated with the public IP. Example: SQL, Storage etc.
  const VirtualMachineIpTagResponse({
    this.ipTagType,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ?ipTagType,
      'tag': ?tag,
    };
  }

  factory VirtualMachineIpTagResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineIpTagResponse(
      ipTagType: (() { final guardedValue = map['ipTagType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

