// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_connect_filter/get_connect_filter.dart';

/// Arguments for getConnect.
class GetConnectArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final Input<List<GetConnectFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Connect
  final Input<Map<String, String>>? tags;

  /// Identifier of the EC2 Transit Gateway Connect.
  final Input<String>? transitGatewayConnectId;

  GetConnectArgs({
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayConnectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetConnectFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetConnectFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayConnectIdValue = transitGatewayConnectId;
    if (transitGatewayConnectIdValue != null) {
      map['transitGatewayConnectId'] = transitGatewayConnectIdValue;
    }
    return map;
  }

  factory GetConnectArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectArgs(
      filters: Input.asOptionalInput<List<GetConnectFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayConnectId:
          Input.asOptionalInput<String>(map['transitGatewayConnectId']),
    );
  }
}
