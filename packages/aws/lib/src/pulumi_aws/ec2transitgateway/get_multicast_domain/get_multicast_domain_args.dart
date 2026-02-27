// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_multicast_domain_filter/get_multicast_domain_filter.dart';

/// Arguments for getMulticastDomain.
class GetMulticastDomainArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetMulticastDomainFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Multicast Domain.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of the EC2 Transit Gateway Multicast Domain.
  final pulumi.Input<String>? transitGatewayMulticastDomainId;

  GetMulticastDomainArgs({
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetMulticastDomainFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetMulticastDomainFilter,
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
    final transitGatewayMulticastDomainIdValue =
        transitGatewayMulticastDomainId;
    if (transitGatewayMulticastDomainIdValue != null) {
      map['transitGatewayMulticastDomainId'] =
          transitGatewayMulticastDomainIdValue;
    }
    return map;
  }

  factory GetMulticastDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainArgs(
      filters: pulumi.Input.asOptionalInput<List<GetMulticastDomainFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayMulticastDomainId: pulumi.Input.asOptionalInput<String>(
          map['transitGatewayMulticastDomainId']),
    );
  }
}
