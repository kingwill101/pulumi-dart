// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpamIpamPoolAllocation resources.
class IpamIpamPoolAllocationState {
  /// The allocated address segment.
  final pulumi.Input<String>? cidr;
  /// Create a custom reserved network segment from The IPAM address pool by entering a mask.
  ///
  /// > **NOTE:**  Enter at least one of `Cidr` or **CidrMask.
  final pulumi.Input<int>? cidrMask;
  /// Instance creation time.
  final pulumi.Input<String>? createTime;
  /// The description of the ipam pool alloctaion.
  /// It must be 1 to 256 characters in length and must start with an English letter or Chinese character, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String>? ipamPoolAllocationDescription;
  /// The name of the ipam pool allocation.
  /// It must be 1 to 128 characters in length and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? ipamPoolAllocationName;
  /// The ID of the IPAM Pool.
  final pulumi.Input<String>? ipamPoolId;
  /// When the IPAM Pool to which CIDR is allocated has the region attribute, this attribute is the IPAM Pool region.
  /// When the IPAM Pool to which CIDR is allocated does not have the region attribute, this attribute is the IPAM region.
  final pulumi.Input<String>? regionId;
  /// The status of the instance. Value:
  final pulumi.Input<String>? status;

  /// Creates a new [IpamIpamPoolAllocationState].
  /// [cidr] The allocated address segment.
  /// [cidrMask] Create a custom reserved network segment from The IPAM address pool by entering a mask.
  /// [createTime] Instance creation time.
  /// [ipamPoolAllocationDescription] The description of the ipam pool alloctaion.
  /// [ipamPoolAllocationName] The name of the ipam pool allocation.
  /// [ipamPoolId] The ID of the IPAM Pool.
  /// [regionId] When the IPAM Pool to which CIDR is allocated has the region attribute, this attribute is the IPAM Pool region.
  /// [status] The status of the instance. Value:
  IpamIpamPoolAllocationState({
    this.cidr,
    this.cidrMask,
    this.createTime,
    this.ipamPoolAllocationDescription,
    this.ipamPoolAllocationName,
    this.ipamPoolId,
    this.regionId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'cidrMask': ?cidrMask,
      'createTime': ?createTime,
      'ipamPoolAllocationDescription': ?ipamPoolAllocationDescription,
      'ipamPoolAllocationName': ?ipamPoolAllocationName,
      'ipamPoolId': ?ipamPoolId,
      'regionId': ?regionId,
      'status': ?status,
    };
  }

  factory IpamIpamPoolAllocationState.fromMap(Map<String, dynamic> map) {
    return IpamIpamPoolAllocationState(
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      cidrMask: map['cidrMask'] == null ? null : (map['cidrMask'] as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      ipamPoolAllocationDescription: map['ipamPoolAllocationDescription'] == null ? null : (map['ipamPoolAllocationDescription'] as String).input(),
      ipamPoolAllocationName: map['ipamPoolAllocationName'] == null ? null : (map['ipamPoolAllocationName'] as String).input(),
      ipamPoolId: map['ipamPoolId'] == null ? null : (map['ipamPoolId'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

