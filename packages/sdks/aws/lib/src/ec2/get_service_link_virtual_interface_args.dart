// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_link_virtual_interface_filter.dart';

/// {@template pulumi_ec2_get_service_link_virtual_interface_get_service_link_virtual_interface_args_doc}
/// Arguments for getServiceLinkVirtualInterface.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_service_link_virtual_interface_get_service_link_virtual_interface_args_doc}
class GetServiceLinkVirtualInterfaceArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeServiceLinkVirtualInterfaces.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetServiceLinkVirtualInterfaceFilter>>? filters;
  /// Identifier of the EC2 Service Link Virtual Interface.
  ///
  /// &gt; **NOTE:** At least one of `filter` or `id` must be specified.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetServiceLinkVirtualInterfaceArgs].
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeServiceLinkVirtualInterfaces.html) for supported filters. Detailed below.
  /// [id] Identifier of the EC2 Service Link Virtual Interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetServiceLinkVirtualInterfaceArgs({
    this.filters,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetServiceLinkVirtualInterfaceFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetServiceLinkVirtualInterfaceFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetServiceLinkVirtualInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLinkVirtualInterfaceArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceLinkVirtualInterfaceFilter>(guardedValue, (value) => GetServiceLinkVirtualInterfaceFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
