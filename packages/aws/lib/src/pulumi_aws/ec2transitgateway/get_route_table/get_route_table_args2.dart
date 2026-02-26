// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_table_filter/get_route_table_filter2.dart';

/// Arguments for getRouteTable.
class GetRouteTableArgs2 {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final Input<List<GetRouteTableFilter2>>? filters;

  /// Identifier of the EC2 Transit Gateway Route Table.
  final Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Route Table
  final Input<Map<String, String>>? tags;

  GetRouteTableArgs2({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetRouteTableFilter2>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetRouteTableFilter2, Map<String, dynamic>>(
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetRouteTableArgs2.fromMap(Map<String, dynamic> map) {
    return GetRouteTableArgs2(
      filters:
          Input.asOptionalInput<List<GetRouteTableFilter2>>(map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
