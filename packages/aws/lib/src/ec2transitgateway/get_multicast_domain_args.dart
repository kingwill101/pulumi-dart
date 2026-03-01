// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multicast_domain_filter.dart';

/// {@template pulumi_ec2transitgateway_get_multicast_domain_get_multicast_domain_args_doc}
/// Arguments for getMulticastDomain.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_multicast_domain_get_multicast_domain_args_doc}
class GetMulticastDomainArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetMulticastDomainFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Multicast Domain.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of the EC2 Transit Gateway Multicast Domain.
  final pulumi.Input<String>? transitGatewayMulticastDomainId;

  /// Creates a new [GetMulticastDomainArgs].
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Multicast Domain.
  /// [transitGatewayMulticastDomainId] Identifier of the EC2 Transit Gateway Multicast Domain.
  GetMulticastDomainArgs({
    List<GetMulticastDomainFilter>? filters,
    String? region,
    Map<String, String>? tags,
    String? transitGatewayMulticastDomainId,
  }) : filters = pulumi.Input.asOptionalInput<List<GetMulticastDomainFilter>>(
         filters,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       transitGatewayMulticastDomainId = pulumi.Input.asOptionalInput<String>(
         transitGatewayMulticastDomainId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetMulticastDomainFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetMulticastDomainFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'tags': ?tags,
      'transitGatewayMulticastDomainId': ?transitGatewayMulticastDomainId,
    };
  }

  factory GetMulticastDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetMulticastDomainFilter>(
              map['filters'],
              (value) => GetMulticastDomainFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayMulticastDomainId:
          map['transitGatewayMulticastDomainId'] == null
          ? null
          : map['transitGatewayMulticastDomainId'] as String,
    );
  }
}
