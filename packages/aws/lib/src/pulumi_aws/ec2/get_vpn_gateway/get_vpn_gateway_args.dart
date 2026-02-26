// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpn_gateway_filter/get_vpn_gateway_filter.dart';

/// Arguments for getVpnGateway.
class GetVpnGatewayArgs {
  /// Autonomous System Number (ASN) for the Amazon side of the specific VPN Gateway to retrieve.
  ///
  /// The arguments of this data source act as filters for querying the available VPN gateways.
  /// The given filters must match exactly one VPN gateway whose data will be exported as attributes.
  final Input<String>? amazonSideAsn;

  /// ID of a VPC attached to the specific VPN Gateway to retrieve.
  final Input<String>? attachedVpcId;

  /// Availability Zone of the specific VPN Gateway to retrieve.
  final Input<String>? availabilityZone;

  /// Custom filter block as described below.
  final Input<List<GetVpnGatewayFilter>>? filters;

  /// ID of the specific VPN Gateway to retrieve.
  final Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// State of the specific VPN Gateway to retrieve.
  final Input<String>? state;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired VPN Gateway.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final amazonSideAsnValue = amazonSideAsn;
    if (amazonSideAsnValue != null) {
      map['amazonSideAsn'] = amazonSideAsnValue;
    }
    final attachedVpcIdValue = attachedVpcId;
    if (attachedVpcIdValue != null) {
      map['attachedVpcId'] = attachedVpcIdValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetVpnGatewayFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetVpnGatewayFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayArgs(
      amazonSideAsn: Input.asOptionalInput<String>(map['amazonSideAsn']),
      attachedVpcId: Input.asOptionalInput<String>(map['attachedVpcId']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      filters: Input.asOptionalInput<List<GetVpnGatewayFilter>>(map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
