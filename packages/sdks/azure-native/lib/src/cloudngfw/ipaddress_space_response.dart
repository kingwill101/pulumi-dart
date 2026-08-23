// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Address Space
class IPAddressSpaceResponse {
  /// Address Space
  final pulumi.Input<String>? addressSpace;
  /// Resource Id
  final pulumi.Input<String>? resourceId;

  /// Creates a new [IPAddressSpaceResponse].
  /// [addressSpace] Address Space
  /// [resourceId] Resource Id
  const IPAddressSpaceResponse({
    this.addressSpace,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace,
      'resourceId': ?resourceId,
    };
  }

  factory IPAddressSpaceResponse.fromMap(Map<String, dynamic> map) {
    return IPAddressSpaceResponse(
      addressSpace: (() { final guardedValue = map['addressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
