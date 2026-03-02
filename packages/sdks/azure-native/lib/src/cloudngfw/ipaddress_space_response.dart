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
  IPAddressSpaceResponse({
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
      addressSpace: map['addressSpace'] == null ? null : (map['addressSpace']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

