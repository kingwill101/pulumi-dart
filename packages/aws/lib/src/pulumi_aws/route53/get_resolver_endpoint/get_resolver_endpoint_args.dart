// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_resolver_endpoint_filter/get_resolver_endpoint_filter.dart';

/// Arguments for getResolverEndpoint.
class GetResolverEndpointArgs {
  /// One or more name/value pairs to use as filters. There are
  /// several valid keys, for a full reference, check out
  /// [Route53resolver Filter value in the AWS API reference][1].
  final Input<List<GetResolverEndpointFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the Route53 Resolver Endpoint.
  final Input<String>? resolverEndpointId;

  GetResolverEndpointArgs({
    this.filters,
    this.region,
    this.resolverEndpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetResolverEndpointFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetResolverEndpointFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resolverEndpointIdValue = resolverEndpointId;
    if (resolverEndpointIdValue != null) {
      map['resolverEndpointId'] = resolverEndpointIdValue;
    }
    return map;
  }

  factory GetResolverEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverEndpointArgs(
      filters: Input.asOptionalInput<List<GetResolverEndpointFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      resolverEndpointId:
          Input.asOptionalInput<String>(map['resolverEndpointId']),
    );
  }
}
