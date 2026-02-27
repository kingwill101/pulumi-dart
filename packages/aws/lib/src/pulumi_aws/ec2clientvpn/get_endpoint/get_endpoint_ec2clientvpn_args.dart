// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_endpoint_filter/get_endpoint_filter.dart';

/// Arguments for getEndpoint.
class GetEndpointEc2clientvpnArgs {
  /// ID of the Client VPN endpoint.
  final pulumi.Input<String>? clientVpnEndpointId;

  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetEndpointFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  GetEndpointEc2clientvpnArgs({
    this.clientVpnEndpointId,
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientVpnEndpointIdValue = clientVpnEndpointId;
    if (clientVpnEndpointIdValue != null) {
      map['clientVpnEndpointId'] = clientVpnEndpointIdValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetEndpointFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetEndpointFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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

  factory GetEndpointEc2clientvpnArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointEc2clientvpnArgs(
      clientVpnEndpointId:
          pulumi.Input.asOptionalInput<String>(map['clientVpnEndpointId']),
      filters:
          pulumi.Input.asOptionalInput<List<GetEndpointFilter>>(map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
