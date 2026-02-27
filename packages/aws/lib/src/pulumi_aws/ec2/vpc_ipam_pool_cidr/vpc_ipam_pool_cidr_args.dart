// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_ipam_pool_cidr_cidr_authorization_context/vpc_ipam_pool_cidr_cidr_authorization_context.dart';

/// The set of arguments for VpcIpamPoolCidr.
class VpcIpamPoolCidrArgs {
  /// The CIDR you want to assign to the pool. Conflicts with `netmask_length`.
  final pulumi.Input<String>? cidr;

  /// A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP. This is not stored in the state file. See cidr_authorization_context for more information.
  final pulumi.Input<VpcIpamPoolCidrCidrAuthorizationContext>?
      cidrAuthorizationContext;

  /// The ID of the pool to which you want to assign a CIDR.
  final pulumi.Input<String> ipamPoolId;

  /// If provided, the cidr provisioned into the specified pool will be the next available cidr given this declared netmask length. Conflicts with `cidr`.
  final pulumi.Input<int>? netmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  VpcIpamPoolCidrArgs({
    this.cidr,
    this.cidrAuthorizationContext,
    required this.ipamPoolId,
    this.netmaskLength,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrValue = cidr;
    if (cidrValue != null) {
      map['cidr'] = cidrValue;
    }
    final cidrAuthorizationContextValue = cidrAuthorizationContext;
    if (cidrAuthorizationContextValue != null) {
      map['cidrAuthorizationContext'] = pulumi.Input.mapOptionalInputValue<
              VpcIpamPoolCidrCidrAuthorizationContext, Map<String, dynamic>>(
          cidrAuthorizationContextValue, (value) => value.toMap());
    }
    map['ipamPoolId'] = ipamPoolId;
    final netmaskLengthValue = netmaskLength;
    if (netmaskLengthValue != null) {
      map['netmaskLength'] = netmaskLengthValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory VpcIpamPoolCidrArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolCidrArgs(
      cidr: pulumi.Input.asOptionalInput<String>(map['cidr']),
      cidrAuthorizationContext:
          pulumi.Input.asOptionalInput<VpcIpamPoolCidrCidrAuthorizationContext>(
              map['cidrAuthorizationContext']),
      ipamPoolId: pulumi.Input.asInput<String>(map['ipamPoolId']),
      netmaskLength: pulumi.Input.asOptionalInput<int>(map['netmaskLength']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
