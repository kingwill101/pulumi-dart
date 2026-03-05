// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_filter.dart';

/// Result data returned by getVpnGateway.
class GetVpnGatewayResult {
  final String amazonSideAsn;
  final String arn;
  final String attachedVpcId;
  final String availabilityZone;
  final List<GetVpnGatewayFilter>? filters;
  final String id;
  final String region;
  final String state;
  final Map<String, String> tags;

  /// Creates a new [GetVpnGatewayResult].
  /// [amazonSideAsn] Required.
  /// [arn] Required.
  /// [attachedVpcId] Required.
  /// [availabilityZone] Required.
  /// [filters] Optional.
  /// [id] Required.
  /// [region] Required.
  /// [state] Required.
  /// [tags] Required.
  GetVpnGatewayResult({
    required this.amazonSideAsn,
    required this.arn,
    required this.attachedVpcId,
    required this.availabilityZone,
    this.filters,
    required this.id,
    required this.region,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': amazonSideAsn,
      'arn': arn,
      'attachedVpcId': attachedVpcId,
      'availabilityZone': availabilityZone,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnGatewayFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'region': region,
      'state': state,
      'tags': tags,
    };
  }

  factory GetVpnGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayResult(
      amazonSideAsn: map['amazonSideAsn'] as String,
      arn: map['arn'] as String,
      attachedVpcId: map['attachedVpcId'] as String,
      availabilityZone: map['availabilityZone'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnGatewayFilter>(guardedValue, (value) => GetVpnGatewayFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

