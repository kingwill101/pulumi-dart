// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_transit_gateway_filter/get_transit_gateway_filter.dart';

/// Arguments for getTransitGateway.
class GetTransitGatewayArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final Input<List<GetTransitGatewayFilter>>? filters;

  /// Identifier of the EC2 Transit Gateway.
  final Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway
  final Input<Map<String, String>>? tags;

  GetTransitGatewayArgs({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetTransitGatewayFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetTransitGatewayFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
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

  factory GetTransitGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayArgs(
      filters:
          Input.asOptionalInput<List<GetTransitGatewayFilter>>(map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
