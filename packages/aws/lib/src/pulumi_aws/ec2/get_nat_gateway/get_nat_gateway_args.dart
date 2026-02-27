// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_nat_gateway_filter/get_nat_gateway_filter.dart';

/// Arguments for getNatGateway.
class GetNatGatewayArgs {
  /// Custom filter block as described below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// NAT Gateways in the current Region. The given filters must match exactly one
  /// NAT Gateway whose data will be exported as attributes.
  final pulumi.Input<List<GetNatGatewayFilter>>? filters;

  /// ID of the specific NAT Gateway to retrieve.
  final pulumi.Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// State of the NAT Gateway (pending | failed | available | deleting | deleted ).
  final pulumi.Input<String>? state;

  /// ID of subnet that the NAT Gateway resides in.
  final pulumi.Input<String>? subnetId;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired NAT Gateway.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the VPC that the NAT Gateway resides in.
  final pulumi.Input<String>? vpcId;

  GetNatGatewayArgs({
    this.filters,
    this.id,
    this.region,
    this.state,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetNatGatewayFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetNatGatewayFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory GetNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayArgs(
      filters: pulumi.Input.asOptionalInput<List<GetNatGatewayFilter>>(
          map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      subnetId: pulumi.Input.asOptionalInput<String>(map['subnetId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
