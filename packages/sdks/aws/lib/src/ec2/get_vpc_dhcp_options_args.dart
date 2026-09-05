// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_dhcp_options_filter.dart';

/// {@template pulumi_ec2_get_vpc_dhcp_options_get_vpc_dhcp_options_args_doc}
/// Arguments for getVpcDhcpOptions.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_dhcp_options_get_vpc_dhcp_options_args_doc}
class GetVpcDhcpOptionsArgs {
  /// EC2 DHCP Options ID.
  final pulumi.Input<String?>? dhcpOptionsId;
  /// List of custom filters as described below.
  final pulumi.Input<List<GetVpcDhcpOptionsFilter>?>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetVpcDhcpOptionsArgs].
  /// [dhcpOptionsId] EC2 DHCP Options ID.
  /// [filters] List of custom filters as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource.
  const GetVpcDhcpOptionsArgs({
    this.dhcpOptionsId,
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptionsId': ?dhcpOptionsId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcDhcpOptionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcDhcpOptionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVpcDhcpOptionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcDhcpOptionsArgs(
      dhcpOptionsId: (() { final guardedValue = map['dhcpOptionsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcDhcpOptionsFilter>(guardedValue, (value) => GetVpcDhcpOptionsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
