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
    List<GetNatGatewaysFilter>? filters,
    String? region,
    Map<String, String>? tags,
    String? vpcId,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetNatGatewaysFilter>>(filters),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetNatGatewaysFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetNatGatewaysFilter,
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
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory GetNatGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewaysArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetNatGatewaysFilter>(
              map['filters'],
              (value) => GetNatGatewaysFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
