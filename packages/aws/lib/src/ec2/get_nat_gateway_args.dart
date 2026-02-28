// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_gateway_filter.dart';

/// {@template pulumi_ec2_get_nat_gateway_get_nat_gateway_args_doc}
/// Arguments for getNatGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_nat_gateway_get_nat_gateway_args_doc}
class GetNatGatewayArgs {
  /// Custom filter block as described below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// NAT Gateways in the current Region. The given filters must match exactly one
  /// NAT Gateway whose data will be exported as attributes.
  final pulumi.Input<List<GetNatGatewayFilter>>? filters;
  /// ID of the specific NAT Gateway to retrieve.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the NAT Gateway (pending | failed | available | deleting | deleted ).
  final pulumi.Input<String>? state;
  /// ID of subnet that the NAT Gateway resides in.
  final pulumi.Input<String>? subnetId;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired NAT Gateway.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the VPC that the NAT Gateway resides in.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetNatGatewayArgs].
  /// [filters] Custom filter block as described below.
  /// [id] ID of the specific NAT Gateway to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the NAT Gateway (pending | failed | available | deleting | deleted ).
  /// [subnetId] ID of subnet that the NAT Gateway resides in.
  /// [tags] Map of tags, each pair of which must exactly match
  /// [vpcId] ID of the VPC that the NAT Gateway resides in.
  GetNatGatewayArgs({
    List<GetNatGatewayFilter>? filters,
    String? id,
    String? region,
    String? state,
    String? subnetId,
    Map<String, String>? tags,
    String? vpcId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetNatGatewayFilter>>(filters),
      id = pulumi.Input.asOptionalInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNatGatewayFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNatGatewayFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
      'state': ?state,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNatGatewayFilter>(map['filters'], (value) => GetNatGatewayFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

