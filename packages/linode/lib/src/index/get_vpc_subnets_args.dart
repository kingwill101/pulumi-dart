// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_subnets_filter.dart';

/// {@template pulumi_index_get_vpc_subnets_get_vpc_subnets_args_doc}
/// Arguments for getVpcSubnets.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_subnets_get_vpc_subnets_args_doc}
class GetVpcSubnetsArgs {
  final pulumi.Input<List<GetVpcSubnetsFilter>>? filters;
  /// The id of the parent VPC for the list of VPCs.
  ///
  /// * `filter` - (Optional) A set of filters used to select Linode VPC subnets that meet certain requirements.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetVpcSubnetsArgs].
  /// [filters] Optional.
  /// [vpcId] The id of the parent VPC for the list of VPCs.
  GetVpcSubnetsArgs({
    List<GetVpcSubnetsFilter>? filters,
    required int vpcId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetVpcSubnetsFilter>>(filters),
      vpcId = pulumi.Input.asInput<int>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcSubnetsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcSubnetsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': vpcId,
    };
  }

  factory GetVpcSubnetsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVpcSubnetsFilter>(map['filters'], (value) => GetVpcSubnetsFilter.fromMap((value as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] as int,
    );
  }
}

