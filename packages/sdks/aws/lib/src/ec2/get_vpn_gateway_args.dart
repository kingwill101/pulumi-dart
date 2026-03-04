// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_gateway_filter.dart';

/// {@template pulumi_ec2_get_vpn_gateway_get_vpn_gateway_args_doc}
/// Arguments for getVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpn_gateway_get_vpn_gateway_args_doc}
class GetVpnGatewayArgs {
  /// Autonomous System Number (ASN) for the Amazon side of the specific VPN Gateway to retrieve.
  ///
  /// The arguments of this data source act as filters for querying the available VPN gateways.
  /// The given filters must match exactly one VPN gateway whose data will be exported as attributes.
  final pulumi.Input<String>? amazonSideAsn;

  /// ID of a VPC attached to the specific VPN Gateway to retrieve.
  final pulumi.Input<String>? attachedVpcId;

  /// Availability Zone of the specific VPN Gateway to retrieve.
  final pulumi.Input<String>? availabilityZone;

  /// Custom filter block as described below.
  final pulumi.Input<List<GetVpnGatewayFilter>>? filters;

  /// ID of the specific VPN Gateway to retrieve.
  final pulumi.Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// State of the specific VPN Gateway to retrieve.
  final pulumi.Input<String>? state;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired VPN Gateway.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVpnGatewayArgs].
  /// [amazonSideAsn] Autonomous System Number (ASN) for the Amazon side of the specific VPN Gateway to retrieve.
  /// [attachedVpcId] ID of a VPC attached to the specific VPN Gateway to retrieve.
  /// [availabilityZone] Availability Zone of the specific VPN Gateway to retrieve.
  /// [filters] Custom filter block as described below.
  /// [id] ID of the specific VPN Gateway to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the specific VPN Gateway to retrieve.
  /// [tags] Map of tags, each pair of which must exactly match
  GetVpnGatewayArgs({
    this.amazonSideAsn,
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
      'attachedVpcId': ?attachedVpcId,
      'availabilityZone': ?availabilityZone,
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetVpnGatewayFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetVpnGatewayFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': ?id,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayArgs(
      amazonSideAsn: (() {
        final guardedValue = map['amazonSideAsn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      attachedVpcId: (() {
        final guardedValue = map['attachedVpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetVpnGatewayFilter>(
            guardedValue,
            (value) => GetVpnGatewayFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
