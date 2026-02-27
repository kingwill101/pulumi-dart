// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_table_filter/get_route_table_filter_ec2transitgateway.dart';

/// Arguments for getRouteTable.
class GetRouteTableEc2transitgatewayArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetRouteTableFilterEc2transitgateway>>? filters;

  /// Identifier of the EC2 Transit Gateway Route Table.
  final pulumi.Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Route Table
  final pulumi.Input<Map<String, String>>? tags;

  GetRouteTableEc2transitgatewayArgs({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetRouteTableFilterEc2transitgateway>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<
              GetRouteTableFilterEc2transitgateway,
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetRouteTableEc2transitgatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableEc2transitgatewayArgs(
      filters: pulumi.Input.asOptionalInput<
          List<GetRouteTableFilterEc2transitgateway>>(map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
