// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_filter.dart';

/// Result data returned by getVpnGateway.
class GetVpnGatewayResult {
  final String? amazonSideAsn;
  final String? arn;
  final String? attachedVpcId;
  final String? availabilityZone;
  final List<GetVpnGatewayFilter>? filters;
  final String? id;
  final String? region;
  final String? state;
  final Map<String, String>? tags;

  /// Creates a new [GetVpnGatewayResult].
  /// [amazonSideAsn] Optional.
  /// [arn] Optional.
  /// [attachedVpcId] Optional.
  /// [availabilityZone] Optional.
  /// [filters] Optional.
  /// [id] Optional.
  /// [region] Optional.
  /// [state] Optional.
  /// [tags] Optional.
  const GetVpnGatewayResult({
    this.amazonSideAsn,
    this.arn,
    this.attachedVpcId,
    this.availabilityZone,
    this.filters,
    this.id,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': ?amazonSideAsn,
      'arn': ?arn,
      'attachedVpcId': ?attachedVpcId,
      'availabilityZone': ?availabilityZone,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnGatewayFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetVpnGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayResult(
      amazonSideAsn: (() { final guardedValue = map['amazonSideAsn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attachedVpcId: (() { final guardedValue = map['attachedVpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnGatewayFilter>(guardedValue, (value) => GetVpnGatewayFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
