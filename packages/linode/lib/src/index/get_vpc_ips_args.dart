// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ips_filter.dart';

/// {@template pulumi_index_get_vpc_ips_get_vpc_ips_args_doc}
/// Arguments for getVpcIps.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_ips_get_vpc_ips_args_doc}
class GetVpcIpsArgs {
  final pulumi.Input<List<GetVpcIpsFilter>>? filters;
  final pulumi.Input<bool>? ipv6;
  /// The id of the parent VPC for the list of VPC IPs.
  ///
  /// * `filter` - (Optional) A set of filters used to select Linode VPC IPs that meet certain requirements.
  final pulumi.Input<int>? vpcId;

  /// Creates a new [GetVpcIpsArgs].
  /// [filters] Optional.
  /// [ipv6] Optional.
  /// [vpcId] The id of the parent VPC for the list of VPC IPs.
  GetVpcIpsArgs({
    List<GetVpcIpsFilter>? filters,
    bool? ipv6,
    int? vpcId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetVpcIpsFilter>>(filters),
      ipv6 = pulumi.Input.asOptionalInput<bool>(ipv6),
      vpcId = pulumi.Input.asOptionalInput<int>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcIpsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcIpsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6': ?ipv6,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVpcIpsFilter>(map['filters'], (value) => GetVpcIpsFilter.fromMap((value as Map).cast<String, dynamic>())),
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as bool,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as int,
    );
  }
}

