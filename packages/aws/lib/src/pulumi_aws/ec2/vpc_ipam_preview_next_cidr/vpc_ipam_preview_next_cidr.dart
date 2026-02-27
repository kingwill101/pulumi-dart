import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_preview_next_cidr_args.dart';

/// Previews a CIDR from an IPAM address pool. Only works for private IPv4.
///
/// ## Example Usage
///
/// Basic usage:
class VpcIpamPreviewNextCidr extends pulumi.CustomResource {
  /// The previewed CIDR from the pool.
  late final pulumi.Output<String> cidr;

  /// Exclude a particular CIDR range from being returned by the pool.
  late final pulumi.Output<List<String>?> disallowedCidrs;

  /// The ID of the pool to which you want to assign a CIDR.
  late final pulumi.Output<String> ipamPoolId;

  /// The netmask length of the CIDR you would like to preview from the IPAM pool.
  late final pulumi.Output<int?> netmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  VpcIpamPreviewNextCidr(
    String name, {
    VpcIpamPreviewNextCidrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamPreviewNextCidr:VpcIpamPreviewNextCidr',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.disallowedCidrs = registerOutput<List<String>?>('disallowedCidrs');
    this.ipamPoolId = registerOutput<String>('ipamPoolId');
    this.netmaskLength = registerOutput<int?>('netmaskLength');
    this.region = registerOutput<String>('region');
  }
}
