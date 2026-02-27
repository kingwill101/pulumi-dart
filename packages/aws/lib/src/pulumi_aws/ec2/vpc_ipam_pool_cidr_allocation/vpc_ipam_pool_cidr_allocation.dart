import 'package:pulumi/pulumi.dart';
import 'vpc_ipam_pool_cidr_allocation_args.dart';

/// Allocates (reserves) a CIDR from an IPAM address pool, preventing usage by IPAM. Only works for private IPv4.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// With the `disallowed_cidrs` attribute:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAM allocations using the allocation `id` and `pool id`, separated by `_`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamPoolCidrAllocation:VpcIpamPoolCidrAllocation example ipam-pool-alloc-0dc6d196509c049ba8b549ff99f639736_ipam-pool-07cfb559e0921fcbe
/// ```
class VpcIpamPoolCidrAllocation extends CustomResource {
  /// The CIDR you want to assign to the pool.
  late final Output<String> cidr;

  /// The description for the allocation.
  late final Output<String?> description;

  /// Exclude a particular CIDR range from being returned by the pool.
  late final Output<List<String>?> disallowedCidrs;
  late final Output<String> ipamPoolAllocationId;

  /// The ID of the pool to which you want to assign a CIDR.
  late final Output<String> ipamPoolId;

  /// The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: `0-128`.
  late final Output<int> netmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the resource.
  late final Output<String> resourceId;

  /// The owner of the resource.
  late final Output<String> resourceOwner;

  /// The type of the resource.
  late final Output<String> resourceType;

  VpcIpamPoolCidrAllocation(
    String name, {
    VpcIpamPoolCidrAllocationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamPoolCidrAllocation:VpcIpamPoolCidrAllocation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.description = registerOutput<String?>('description');
    this.disallowedCidrs = registerOutput<List<String>?>('disallowedCidrs');
    this.ipamPoolAllocationId = registerOutput<String>('ipamPoolAllocationId');
    this.ipamPoolId = registerOutput<String>('ipamPoolId');
    this.netmaskLength = registerOutput<int>('netmaskLength');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceOwner = registerOutput<String>('resourceOwner');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
