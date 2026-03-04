// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Address Space
class IPAddressSpace {
  /// Address Space
  final pulumi.Input<String>? addressSpace;

  /// Resource Id
  final pulumi.Input<String>? resourceId;

  /// Creates a new [IPAddressSpace].
  /// [addressSpace] Address Space
  /// [resourceId] Resource Id
  IPAddressSpace({this.addressSpace, this.resourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace,
      'resourceId': ?resourceId,
    };
  }

  factory IPAddressSpace.fromMap(Map<String, dynamic> map) {
    return IPAddressSpace(
      addressSpace: (() {
        final guardedValue = map['addressSpace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
