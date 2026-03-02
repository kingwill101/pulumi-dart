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
  IPAddressSpace({
    this.addressSpace,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace,
      'resourceId': ?resourceId,
    };
  }

  factory IPAddressSpace.fromMap(Map<String, dynamic> map) {
    return IPAddressSpace(
      addressSpace: map['addressSpace'] == null ? null : (map['addressSpace']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

