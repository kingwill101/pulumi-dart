// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interfaces_filter.dart';

/// {@template pulumi_ec2_get_network_interfaces_get_network_interfaces_args_doc}
/// Arguments for getNetworkInterfaces.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_network_interfaces_get_network_interfaces_args_doc}
class GetNetworkInterfacesArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetNetworkInterfacesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired network interfaces.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetNetworkInterfacesArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  GetNetworkInterfacesArgs({
    pulumi.Output<List<GetNetworkInterfacesFilter>>? filters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetNetworkInterfacesFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNetworkInterfacesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNetworkInterfacesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetNetworkInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetNetworkInterfacesFilter>>(pulumi.Input.decodeList<GetNetworkInterfacesFilter>(map['filters'], (value) => GetNetworkInterfacesFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

