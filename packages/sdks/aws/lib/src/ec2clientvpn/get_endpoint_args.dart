// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_filter.dart';

/// {@template pulumi_ec2clientvpn_get_endpoint_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_ec2clientvpn_get_endpoint_get_endpoint_args_doc}
class GetEndpointArgs {
  /// ID of the Client VPN endpoint.
  final pulumi.Input<String>? clientVpnEndpointId;
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetEndpointFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match a pair on the desired endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEndpointArgs].
  /// [clientVpnEndpointId] ID of the Client VPN endpoint.
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired endpoint.
  GetEndpointArgs({
    this.clientVpnEndpointId,
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientVpnEndpointId': ?clientVpnEndpointId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetEndpointFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetEndpointFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      clientVpnEndpointId: map['clientVpnEndpointId'] == null ? null : ((map['clientVpnEndpointId'] as String).input()).input(),
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetEndpointFilter>(map['filters']!, (value) => GetEndpointFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

