// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_nat_gateways_filter/get_nat_gateways_filter.dart';

/// Result data returned by getNatGateways.
class GetNatGatewaysResult {
  final List<GetNatGatewaysFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the NAT gateway ids found.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;
  final String? vpcId;

  GetNatGatewaysResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetNatGatewaysFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['tags'] = tags;
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory GetNatGatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetNatGatewaysResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetNatGatewaysFilter>(
              map['filters'],
              (value) => GetNatGatewaysFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
