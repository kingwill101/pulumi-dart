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
    pulumi.Output<String>? amazonSideAsn,
    pulumi.Output<String>? attachedVpcId,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<List<GetVpnGatewayFilter>>? filters,
    pulumi.Output<String>? id,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      amazonSideAsn = pulumi.Input.asOptionalInput<String>(amazonSideAsn),
      attachedVpcId = pulumi.Input.asOptionalInput<String>(attachedVpcId),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      filters = pulumi.Input.asOptionalInput<List<GetVpnGatewayFilter>>(filters),
      id = pulumi.Input.asOptionalInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': ?amazonSideAsn,
      'attachedVpcId': ?attachedVpcId,
      'availabilityZone': ?availabilityZone,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpnGatewayFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpnGatewayFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayArgs(
      amazonSideAsn: map['amazonSideAsn'] == null ? null : pulumi.Output.create<String>(map['amazonSideAsn'] as String),
      attachedVpcId: map['attachedVpcId'] == null ? null : pulumi.Output.create<String>(map['attachedVpcId'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetVpnGatewayFilter>>(pulumi.Input.decodeList<GetVpnGatewayFilter>(map['filters'], (value) => GetVpnGatewayFilter.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

