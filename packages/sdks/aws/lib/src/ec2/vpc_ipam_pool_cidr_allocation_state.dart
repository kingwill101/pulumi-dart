// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpamPoolCidrAllocation resources.
class VpcIpamPoolCidrAllocationState {
  /// The CIDR you want to assign to the pool.
  final pulumi.Input<String>? cidr;
  /// The description for the allocation.
  final pulumi.Input<String>? description;
  /// Exclude a particular CIDR range from being returned by the pool.
  final pulumi.Input<List<String>>? disallowedCidrs;
  final pulumi.Input<String>? ipamPoolAllocationId;
  /// The ID of the pool to which you want to assign a CIDR.
  final pulumi.Input<String>? ipamPoolId;
  /// The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: `0-128`.
  final pulumi.Input<int>? netmaskLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the resource.
  final pulumi.Input<String>? resourceId;
  /// The owner of the resource.
  final pulumi.Input<String>? resourceOwner;
  /// The type of the resource.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [VpcIpamPoolCidrAllocationState].
  /// [cidr] The CIDR you want to assign to the pool.
  /// [description] The description for the allocation.
  /// [disallowedCidrs] Exclude a particular CIDR range from being returned by the pool.
  /// [ipamPoolAllocationId] Optional.
  /// [ipamPoolId] The ID of the pool to which you want to assign a CIDR.
  /// [netmaskLength] The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: `0-128`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the resource.
  /// [resourceOwner] The owner of the resource.
  /// [resourceType] The type of the resource.
  VpcIpamPoolCidrAllocationState({
    this.cidr,
    this.description,
    this.disallowedCidrs,
    this.ipamPoolAllocationId,
    this.ipamPoolId,
    this.netmaskLength,
    this.region,
    this.resourceId,
    this.resourceOwner,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
      'disallowedCidrs': ?disallowedCidrs,
      'ipamPoolAllocationId': ?ipamPoolAllocationId,
      'ipamPoolId': ?ipamPoolId,
      'netmaskLength': ?netmaskLength,
      'region': ?region,
      'resourceId': ?resourceId,
      'resourceOwner': ?resourceOwner,
      'resourceType': ?resourceType,
    };
  }

  factory VpcIpamPoolCidrAllocationState.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolCidrAllocationState(
      cidr: map['cidr'] == null ? null : ((map['cidr'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      disallowedCidrs: map['disallowedCidrs'] == null ? null : (((map['disallowedCidrs'] as List).cast<String>()).input()).input(),
      ipamPoolAllocationId: map['ipamPoolAllocationId'] == null ? null : ((map['ipamPoolAllocationId'] as String).input()).input(),
      ipamPoolId: map['ipamPoolId'] == null ? null : ((map['ipamPoolId'] as String).input()).input(),
      netmaskLength: map['netmaskLength'] == null ? null : ((map['netmaskLength'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      resourceOwner: map['resourceOwner'] == null ? null : ((map['resourceOwner'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
    );
  }
}

