// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_virtual_interface_groups_filter.dart';

/// {@template pulumi_ec2_get_local_gateway_virtual_interface_groups_get_local_gateway_virtual_interface_groups_args_doc}
/// Arguments for getLocalGatewayVirtualInterfaceGroups.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_local_gateway_virtual_interface_groups_get_local_gateway_virtual_interface_groups_args_doc}
class GetLocalGatewayVirtualInterfaceGroupsArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaceGroups.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetLocalGatewayVirtualInterfaceGroupsFilter>>?
  filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLocalGatewayVirtualInterfaceGroupsArgs].
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaceGroups.html) for supported filters. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  GetLocalGatewayVirtualInterfaceGroupsArgs({
    List<GetLocalGatewayVirtualInterfaceGroupsFilter>? filters,
    String? region,
    Map<String, String>? tags,
  }) : filters =
           pulumi.Input.asOptionalInput<
             List<GetLocalGatewayVirtualInterfaceGroupsFilter>
           >(filters),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetLocalGatewayVirtualInterfaceGroupsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetLocalGatewayVirtualInterfaceGroupsFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayVirtualInterfaceGroupsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLocalGatewayVirtualInterfaceGroupsArgs(
      filters: map['filters'] == null
          ? null
          : pulumi
                .Input.decodeList<GetLocalGatewayVirtualInterfaceGroupsFilter>(
              map['filters'],
              (value) => GetLocalGatewayVirtualInterfaceGroupsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
