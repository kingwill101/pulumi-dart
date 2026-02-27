// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_peering_connections_filter/get_vpc_peering_connections_filter.dart';

/// Arguments for getVpcPeeringConnections.
class GetVpcPeeringConnectionsArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetVpcPeeringConnectionsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired VPC Peering Connection.
  ///
  /// The arguments of this data source act as filters for querying the available VPC peering connections.
  final pulumi.Input<Map<String, String>>? tags;

  GetVpcPeeringConnectionsArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetVpcPeeringConnectionsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetVpcPeeringConnectionsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVpcPeeringConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionsArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetVpcPeeringConnectionsFilter>>(
              map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
