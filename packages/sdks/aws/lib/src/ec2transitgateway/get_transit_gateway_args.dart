// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_gateway_filter.dart';

/// {@template pulumi_ec2transitgateway_get_transit_gateway_get_transit_gateway_args_doc}
/// Arguments for getTransitGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_transit_gateway_get_transit_gateway_args_doc}
class GetTransitGatewayArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetTransitGatewayFilter>>? filters;
  /// Identifier of the EC2 Transit Gateway.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetTransitGatewayArgs].
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [id] Identifier of the EC2 Transit Gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway
  GetTransitGatewayArgs({
    pulumi.Output<List<GetTransitGatewayFilter>>? filters,
    pulumi.Output<String>? id,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetTransitGatewayFilter>>(filters),
      id = pulumi.Input.asOptionalInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetTransitGatewayFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetTransitGatewayFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetTransitGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetTransitGatewayFilter>>(pulumi.Input.decodeList<GetTransitGatewayFilter>(map['filters'], (value) => GetTransitGatewayFilter.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

