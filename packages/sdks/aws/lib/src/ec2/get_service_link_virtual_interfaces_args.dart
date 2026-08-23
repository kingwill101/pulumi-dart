// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_link_virtual_interfaces_filter.dart';

/// {@template pulumi_ec2_get_service_link_virtual_interfaces_get_service_link_virtual_interfaces_args_doc}
/// Arguments for getServiceLinkVirtualInterfaces.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_service_link_virtual_interfaces_get_service_link_virtual_interfaces_args_doc}
class GetServiceLinkVirtualInterfacesArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeServiceLinkVirtualInterfaces.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetServiceLinkVirtualInterfacesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags, each pair of which must exactly match a pair on the desired Service Link Virtual Interfaces.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServiceLinkVirtualInterfacesArgs].
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeServiceLinkVirtualInterfaces.html) for supported filters. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags, each pair of which must exactly match a pair on the desired Service Link Virtual Interfaces.
  const GetServiceLinkVirtualInterfacesArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetServiceLinkVirtualInterfacesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetServiceLinkVirtualInterfacesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetServiceLinkVirtualInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLinkVirtualInterfacesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceLinkVirtualInterfacesFilter>(guardedValue, (value) => GetServiceLinkVirtualInterfacesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
