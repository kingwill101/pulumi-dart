// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_peering_connections_filter.dart';

/// {@template pulumi_ec2_get_vpc_peering_connections_get_vpc_peering_connections_args_doc}
/// Arguments for getVpcPeeringConnections.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_peering_connections_get_vpc_peering_connections_args_doc}
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

  /// Creates a new [GetVpcPeeringConnectionsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetVpcPeeringConnectionsArgs({
    List<GetVpcPeeringConnectionsFilter>? filters,
    String? region,
    Map<String, String>? tags,
  }) : filters =
           pulumi.Input.asOptionalInput<List<GetVpcPeeringConnectionsFilter>>(
             filters,
           ),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetVpcPeeringConnectionsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetVpcPeeringConnectionsFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVpcPeeringConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionsArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcPeeringConnectionsFilter>(
              map['filters'],
              (value) => GetVpcPeeringConnectionsFilter.fromMap(
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
