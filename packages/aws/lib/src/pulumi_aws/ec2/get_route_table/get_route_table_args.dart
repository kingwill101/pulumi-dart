// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_table_filter/get_route_table_filter.dart';

/// Arguments for getRouteTable.
class GetRouteTableArgs {
  /// Configuration block. Detailed below.
  final Input<List<GetRouteTableFilter>>? filters;

  /// ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  final Input<String>? gatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the specific Route Table to retrieve.
  final Input<String>? routeTableId;

  /// ID of a Subnet which is connected to the Route Table (not exported if not passed as a parameter).
  final Input<String>? subnetId;

  /// Map of tags, each pair of which must exactly match a pair on the desired Route Table.
  final Input<Map<String, String>>? tags;

  /// ID of the VPC that the desired Route Table belongs to.
  final Input<String>? vpcId;

  GetRouteTableArgs({
    this.filters,
    this.gatewayId,
    this.region,
    this.routeTableId,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetRouteTableFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetRouteTableFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final gatewayIdValue = gatewayId;
    if (gatewayIdValue != null) {
      map['gatewayId'] = gatewayIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routeTableIdValue = routeTableId;
    if (routeTableIdValue != null) {
      map['routeTableId'] = routeTableIdValue;
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

  factory GetRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableArgs(
      filters: Input.asOptionalInput<List<GetRouteTableFilter>>(map['filters']),
      gatewayId: Input.asOptionalInput<String>(map['gatewayId']),
      region: Input.asOptionalInput<String>(map['region']),
      routeTableId: Input.asOptionalInput<String>(map['routeTableId']),
      subnetId: Input.asOptionalInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
