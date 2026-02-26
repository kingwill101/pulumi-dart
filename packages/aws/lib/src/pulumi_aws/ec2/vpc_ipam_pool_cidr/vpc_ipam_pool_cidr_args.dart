// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_ipam_pool_cidr_cidr_authorization_context/vpc_ipam_pool_cidr_cidr_authorization_context.dart';

/// The set of arguments for VpcIpamPoolCidr.
class VpcIpamPoolCidrArgs {
  /// The CIDR you want to assign to the pool. Conflicts with <span pulumi-lang-nodejs="`netmaskLength`" pulumi-lang-dotnet="`NetmaskLength`" pulumi-lang-go="`netmaskLength`" pulumi-lang-python="`netmask_length`" pulumi-lang-yaml="`netmaskLength`" pulumi-lang-java="`netmaskLength`">`netmask_length`</span>.
  final Input<String>? cidr;

  /// A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP. This is not stored in the state file. See<span pulumi-lang-nodejs=" cidrAuthorizationContext " pulumi-lang-dotnet=" CidrAuthorizationContext " pulumi-lang-go=" cidrAuthorizationContext " pulumi-lang-python=" cidr_authorization_context " pulumi-lang-yaml=" cidrAuthorizationContext " pulumi-lang-java=" cidrAuthorizationContext "> cidr_authorization_context </span>for more information.
  final Input<VpcIpamPoolCidrCidrAuthorizationContext>?
      cidrAuthorizationContext;

  /// The ID of the pool to which you want to assign a CIDR.
  final Input<String> ipamPoolId;

  /// If provided, the cidr provisioned into the specified pool will be the next available cidr given this declared netmask length. Conflicts with <span pulumi-lang-nodejs="`cidr`" pulumi-lang-dotnet="`Cidr`" pulumi-lang-go="`cidr`" pulumi-lang-python="`cidr`" pulumi-lang-yaml="`cidr`" pulumi-lang-java="`cidr`">`cidr`</span>.
  final Input<int>? netmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      map['cidrAuthorizationContext'] = Input.mapOptionalInputValue<
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
      cidr: Input.asOptionalInput<String>(map['cidr']),
      cidrAuthorizationContext:
          Input.asOptionalInput<VpcIpamPoolCidrCidrAuthorizationContext>(
              map['cidrAuthorizationContext']),
      ipamPoolId: Input.asInput<String>(map['ipamPoolId']),
      netmaskLength: Input.asOptionalInput<int>(map['netmaskLength']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
