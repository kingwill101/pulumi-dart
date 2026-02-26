// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_internet_gateway_filter/get_internet_gateway_filter.dart';

/// Arguments for getInternetGateway.
class GetInternetGatewayArgs {
  /// Custom filter block as described below.
  ///
  /// More complex filters can be expressed using one or more <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> sub-blocks,
  /// which take the following arguments:
  final Input<List<GetInternetGatewayFilter>>? filters;

  /// ID of the specific Internet Gateway to retrieve.
  final Input<String>? internetGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired Internet Gateway.
  final Input<Map<String, String>>? tags;

  GetInternetGatewayArgs({
    this.filters,
    this.internetGatewayId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetInternetGatewayFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetInternetGatewayFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final internetGatewayIdValue = internetGatewayId;
    if (internetGatewayIdValue != null) {
      map['internetGatewayId'] = internetGatewayIdValue;
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

  factory GetInternetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayArgs(
      filters:
          Input.asOptionalInput<List<GetInternetGatewayFilter>>(map['filters']),
      internetGatewayId:
          Input.asOptionalInput<String>(map['internetGatewayId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
