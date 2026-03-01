// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_pool_cidr_cidr_authorization_context.dart';

/// {@template pulumi_ec2_vpc_ipam_pool_cidr_vpc_ipam_pool_cidr_args_doc}
/// The set of arguments for VpcIpamPoolCidr.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_ipam_pool_cidr_vpc_ipam_pool_cidr_args_doc}
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

  /// Creates a new [VpcIpamPoolCidrArgs].
  /// [cidr] The CIDR you want to assign to the pool. Conflicts with `netmask_length`.
  /// [cidrAuthorizationContext] A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP. This is not stored in the state file. See cidr_authorization_context for more information.
  /// [ipamPoolId] The ID of the pool to which you want to assign a CIDR.
  /// [netmaskLength] If provided, the cidr provisioned into the specified pool will be the next available cidr given this declared netmask length. Conflicts with `cidr`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VpcIpamPoolCidrArgs({
    String? cidr,
    VpcIpamPoolCidrCidrAuthorizationContext? cidrAuthorizationContext,
    required String ipamPoolId,
    int? netmaskLength,
    String? region,
  }) : cidr = pulumi.Input.asOptionalInput<String>(cidr),
       cidrAuthorizationContext =
           pulumi.Input.asOptionalInput<
             VpcIpamPoolCidrCidrAuthorizationContext
           >(cidrAuthorizationContext),
       ipamPoolId = pulumi.Input.asInput<String>(ipamPoolId),
       netmaskLength = pulumi.Input.asOptionalInput<int>(netmaskLength),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'cidrAuthorizationContext':
          ?pulumi.Input.mapOptionalInputValue<
            VpcIpamPoolCidrCidrAuthorizationContext,
            Map<String, dynamic>
          >(cidrAuthorizationContext, (value) => value.toMap()),
      'ipamPoolId': ipamPoolId,
      'netmaskLength': ?netmaskLength,
      'region': ?region,
    };
  }

  factory VpcIpamPoolCidrArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolCidrArgs(
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      cidrAuthorizationContext: map['cidrAuthorizationContext'] == null
          ? null
          : VpcIpamPoolCidrCidrAuthorizationContext.fromMap(
              (map['cidrAuthorizationContext'] as Map).cast<String, dynamic>(),
            ),
      ipamPoolId: map['ipamPoolId'] as String,
      netmaskLength: map['netmaskLength'] == null
          ? null
          : map['netmaskLength'] as int,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
