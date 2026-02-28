// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_virtual_interface_group_filter.dart';

/// Result data returned by getLocalGatewayVirtualInterfaceGroup.
class GetLocalGatewayVirtualInterfaceGroupResult {
  final List<GetLocalGatewayVirtualInterfaceGroupFilter>? filters;
  final String id;
  final String localGatewayId;

  /// Set of EC2 Local Gateway Virtual Interface identifiers.
  final List<String> localGatewayVirtualInterfaceIds;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetLocalGatewayVirtualInterfaceGroupResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [localGatewayId] Required.
  /// [localGatewayVirtualInterfaceIds] Set of EC2 Local Gateway Virtual Interface identifiers.
  /// [region] Required.
  /// [tags] Required.
  GetLocalGatewayVirtualInterfaceGroupResult({
    this.filters,
    required this.id,
    required this.localGatewayId,
    required this.localGatewayVirtualInterfaceIds,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<
          GetLocalGatewayVirtualInterfaceGroupFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['localGatewayId'] = localGatewayId;
    map['localGatewayVirtualInterfaceIds'] = localGatewayVirtualInterfaceIds;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetLocalGatewayVirtualInterfaceGroupResult.fromMap(
      Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceGroupResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetLocalGatewayVirtualInterfaceGroupFilter>(
              map['filters'],
              (value) => GetLocalGatewayVirtualInterfaceGroupFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      localGatewayId: map['localGatewayId'] as String,
      localGatewayVirtualInterfaceIds:
          (map['localGatewayVirtualInterfaceIds'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
