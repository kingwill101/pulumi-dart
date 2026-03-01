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
    String? amazonSideAsn,
    String? attachedVpcId,
    String? availabilityZone,
    List<GetVpnGatewayFilter>? filters,
    String? id,
    String? region,
    String? state,
    Map<String, String>? tags,
  }) : amazonSideAsn = pulumi.Input.asOptionalInput<String>(amazonSideAsn),
       attachedVpcId = pulumi.Input.asOptionalInput<String>(attachedVpcId),
       availabilityZone = pulumi.Input.asOptionalInput<String>(
         availabilityZone,
       ),
       filters = pulumi.Input.asOptionalInput<List<GetVpnGatewayFilter>>(
         filters,
       ),
       id = pulumi.Input.asOptionalInput<String>(id),
       region = pulumi.Input.asOptionalInput<String>(region),
       state = pulumi.Input.asOptionalInput<String>(state),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      amazonSideAsn: map['amazonSideAsn'] == null
          ? null
          : map['amazonSideAsn'] as String,
      attachedVpcId: map['attachedVpcId'] == null
          ? null
          : map['attachedVpcId'] as String,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpnGatewayFilter>(
              map['filters'],
              (value) => GetVpnGatewayFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] == null ? null : map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
