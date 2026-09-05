// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_acls_filter.dart';

/// Result data returned by getNetworkAcls.
class GetNetworkAclsResult {
  final List<GetNetworkAclsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of all the network ACL ids found.
  final List<String>? ids;
  final String? region;
  final Map<String, String>? tags;
  final String? vpcId;

  /// Creates a new [GetNetworkAclsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the network ACL ids found.
  /// [region] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  const GetNetworkAclsResult({
    this.filters,
    this.id,
    this.ids,
    this.region,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkAclsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetNetworkAclsResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkAclsFilter>(guardedValue, (value) => GetNetworkAclsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
