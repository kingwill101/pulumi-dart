// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_virtual_interface_group_filter.dart';

/// {@template pulumi_ec2_get_local_gateway_virtual_interface_group_get_local_gateway_virtual_interface_group_args_doc}
/// Arguments for getLocalGatewayVirtualInterfaceGroup.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_local_gateway_virtual_interface_group_get_local_gateway_virtual_interface_group_args_doc}
class GetLocalGatewayVirtualInterfaceGroupArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaceGroups.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetLocalGatewayVirtualInterfaceGroupFilter>>? filters;
  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  final pulumi.Input<String>? id;
  /// Identifier of EC2 Local Gateway.
  final pulumi.Input<String>? localGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLocalGatewayVirtualInterfaceGroupArgs].
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaceGroups.html) for supported filters. Detailed below.
  /// [id] Identifier of EC2 Local Gateway Virtual Interface Group.
  /// [localGatewayId] Identifier of EC2 Local Gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  GetLocalGatewayVirtualInterfaceGroupArgs({
    this.filters,
    this.id,
    this.localGatewayId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLocalGatewayVirtualInterfaceGroupFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLocalGatewayVirtualInterfaceGroupFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'localGatewayId': ?localGatewayId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayVirtualInterfaceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceGroupArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetLocalGatewayVirtualInterfaceGroupFilter>(map['filters'], (value) => GetLocalGatewayVirtualInterfaceGroupFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      localGatewayId: map['localGatewayId'] == null ? null : (map['localGatewayId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

