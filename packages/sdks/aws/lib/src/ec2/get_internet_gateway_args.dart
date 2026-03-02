// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_internet_gateway_filter.dart';

/// {@template pulumi_ec2_get_internet_gateway_get_internet_gateway_args_doc}
/// Arguments for getInternetGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_internet_gateway_get_internet_gateway_args_doc}
class GetInternetGatewayArgs {
  /// Custom filter block as described below.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<List<GetInternetGatewayFilter>>? filters;
  /// ID of the specific Internet Gateway to retrieve.
  final pulumi.Input<String>? internetGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired Internet Gateway.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetInternetGatewayArgs].
  /// [filters] Custom filter block as described below.
  /// [internetGatewayId] ID of the specific Internet Gateway to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  GetInternetGatewayArgs({
    this.filters,
    this.internetGatewayId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetInternetGatewayFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetInternetGatewayFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internetGatewayId': ?internetGatewayId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetInternetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetInternetGatewayFilter>(map['filters'], (value) => GetInternetGatewayFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      internetGatewayId: map['internetGatewayId'] == null ? null : (map['internetGatewayId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

