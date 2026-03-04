// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_virtual_interface_groups_filter.dart';

/// Result data returned by getLocalGatewayVirtualInterfaceGroups.
class GetLocalGatewayVirtualInterfaceGroupsResult {
  final List<GetLocalGatewayVirtualInterfaceGroupsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of EC2 Local Gateway Virtual Interface Group identifiers.
  final List<String> ids;

  /// Set of EC2 Local Gateway Virtual Interface identifiers.
  final List<String> localGatewayVirtualInterfaceIds;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetLocalGatewayVirtualInterfaceGroupsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of EC2 Local Gateway Virtual Interface Group identifiers.
  /// [localGatewayVirtualInterfaceIds] Set of EC2 Local Gateway Virtual Interface identifiers.
  /// [region] Required.
  /// [tags] Optional.
  GetLocalGatewayVirtualInterfaceGroupsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.localGatewayVirtualInterfaceIds,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetLocalGatewayVirtualInterfaceGroupsFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'ids': ids,
      'localGatewayVirtualInterfaceIds': localGatewayVirtualInterfaceIds,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayVirtualInterfaceGroupsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLocalGatewayVirtualInterfaceGroupsResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<GetLocalGatewayVirtualInterfaceGroupsFilter>(
          guardedValue,
          (value) => GetLocalGatewayVirtualInterfaceGroupsFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      localGatewayVirtualInterfaceIds:
          (map['localGatewayVirtualInterfaceIds'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
