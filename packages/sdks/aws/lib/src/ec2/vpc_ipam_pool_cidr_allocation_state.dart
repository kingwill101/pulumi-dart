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
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? disallowedCidrs,
    pulumi.Output<String>? ipamPoolAllocationId,
    pulumi.Output<String>? ipamPoolId,
    pulumi.Output<int>? netmaskLength,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceOwner,
    pulumi.Output<String>? resourceType,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      description = pulumi.Input.asOptionalInput<String>(description),
      disallowedCidrs = pulumi.Input.asOptionalInput<List<String>>(disallowedCidrs),
      ipamPoolAllocationId = pulumi.Input.asOptionalInput<String>(ipamPoolAllocationId),
      ipamPoolId = pulumi.Input.asOptionalInput<String>(ipamPoolId),
      netmaskLength = pulumi.Input.asOptionalInput<int>(netmaskLength),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceOwner = pulumi.Input.asOptionalInput<String>(resourceOwner),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

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
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disallowedCidrs: map['disallowedCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['disallowedCidrs'] as List).cast<String>()),
      ipamPoolAllocationId: map['ipamPoolAllocationId'] == null ? null : pulumi.Output.create<String>(map['ipamPoolAllocationId'] as String),
      ipamPoolId: map['ipamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipamPoolId'] as String),
      netmaskLength: map['netmaskLength'] == null ? null : pulumi.Output.create<int>(map['netmaskLength'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceOwner: map['resourceOwner'] == null ? null : pulumi.Output.create<String>(map['resourceOwner'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

