// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_gateways_filter.dart';

/// {@template pulumi_ec2_get_nat_gateways_get_nat_gateways_args_doc}
/// Arguments for getNatGateways.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_nat_gateways_get_nat_gateways_args_doc}
class GetNatGatewaysArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetNatGatewaysFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired NAT Gateways.
  final pulumi.Input<Map<String, String>>? tags;
  /// VPC ID that you want to filter from.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetNatGatewaysArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  /// [vpcId] VPC ID that you want to filter from.
  GetNatGatewaysArgs({
    this.filters,
    this.region,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetNatGatewaysFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetNatGatewaysFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetNatGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewaysArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetNatGatewaysFilter>(map['filters']!, (value) => GetNatGatewaysFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

