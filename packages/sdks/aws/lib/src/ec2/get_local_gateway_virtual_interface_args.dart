// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_virtual_interface_filter.dart';

/// {@template pulumi_ec2_get_local_gateway_virtual_interface_get_local_gateway_virtual_interface_args_doc}
/// Arguments for getLocalGatewayVirtualInterface.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_local_gateway_virtual_interface_get_local_gateway_virtual_interface_args_doc}
class GetLocalGatewayVirtualInterfaceArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaces.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetLocalGatewayVirtualInterfaceFilter>>? filters;
  /// Identifier of EC2 Local Gateway Virtual Interface.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLocalGatewayVirtualInterfaceArgs].
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaces.html) for supported filters. Detailed below.
  /// [id] Identifier of EC2 Local Gateway Virtual Interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  GetLocalGatewayVirtualInterfaceArgs({
    pulumi.Output<List<GetLocalGatewayVirtualInterfaceFilter>>? filters,
    pulumi.Output<String>? id,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetLocalGatewayVirtualInterfaceFilter>>(filters),
      id = pulumi.Input.asOptionalInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLocalGatewayVirtualInterfaceFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLocalGatewayVirtualInterfaceFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetLocalGatewayVirtualInterfaceFilter>>(pulumi.Input.decodeList<GetLocalGatewayVirtualInterfaceFilter>(map['filters'], (value) => GetLocalGatewayVirtualInterfaceFilter.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

