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
  const GetLocalGatewayVirtualInterfaceGroupResult({
    this.filters,
    required this.id,
    required this.localGatewayId,
    required this.localGatewayVirtualInterfaceIds,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocalGatewayVirtualInterfaceGroupFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'localGatewayId': localGatewayId,
      'localGatewayVirtualInterfaceIds': localGatewayVirtualInterfaceIds,
      'region': region,
      'tags': tags,
    };
  }

  factory GetLocalGatewayVirtualInterfaceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceGroupResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocalGatewayVirtualInterfaceGroupFilter>(guardedValue, (value) => GetLocalGatewayVirtualInterfaceGroupFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      localGatewayId: map['localGatewayId'] as String,
      localGatewayVirtualInterfaceIds: (map['localGatewayVirtualInterfaceIds'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

