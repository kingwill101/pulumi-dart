// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_endpoint_filter.dart';

/// {@template pulumi_route53_get_resolver_endpoint_get_resolver_endpoint_args_doc}
/// Arguments for getResolverEndpoint.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_endpoint_get_resolver_endpoint_args_doc}
class GetResolverEndpointArgs {
  /// One or more name/value pairs to use as filters. There are
  /// several valid keys, for a full reference, check out
  /// [Route53resolver Filter value in the AWS API reference][1].
  final pulumi.Input<List<GetResolverEndpointFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the Route53 Resolver Endpoint.
  final pulumi.Input<String>? resolverEndpointId;

  /// Creates a new [GetResolverEndpointArgs].
  /// [filters] One or more name/value pairs to use as filters. There are
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverEndpointId] ID of the Route53 Resolver Endpoint.
  GetResolverEndpointArgs({
    List<GetResolverEndpointFilter>? filters,
    String? region,
    String? resolverEndpointId,
  }) : filters = pulumi.Input.asOptionalInput<List<GetResolverEndpointFilter>>(
         filters,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       resolverEndpointId = pulumi.Input.asOptionalInput<String>(
         resolverEndpointId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetResolverEndpointFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetResolverEndpointFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'resolverEndpointId': ?resolverEndpointId,
    };
  }

  factory GetResolverEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverEndpointArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetResolverEndpointFilter>(
              map['filters'],
              (value) => GetResolverEndpointFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      resolverEndpointId: map['resolverEndpointId'] == null
          ? null
          : map['resolverEndpointId'] as String,
    );
  }
}
