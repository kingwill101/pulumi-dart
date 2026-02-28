// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_acls_filter.dart';

/// Result data returned by getNetworkAcls.
class GetNetworkAclsResult {
  final List<GetNetworkAclsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the network ACL ids found.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;
  final String? vpcId;

  /// Creates a new [GetNetworkAclsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the network ACL ids found.
  /// [region] Required.
  /// [tags] Required.
  /// [vpcId] Optional.
  GetNetworkAclsResult({
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
          pulumi.Input.encodeList<GetNetworkAclsFilter, Map<String, dynamic>>(
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

  factory GetNetworkAclsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetNetworkAclsFilter>(
              map['filters'],
              (value) => GetNetworkAclsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
