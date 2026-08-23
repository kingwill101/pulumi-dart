// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_link_virtual_interfaces_filter.dart';

/// Result data returned by getServiceLinkVirtualInterfaces.
class GetServiceLinkVirtualInterfacesResult {
  final List<GetServiceLinkVirtualInterfacesFilter>? filters;
  /// List of EC2 Service Link Virtual Interface identifiers.
  final List<String> ids;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetServiceLinkVirtualInterfacesResult].
  /// [filters] Optional.
  /// [ids] List of EC2 Service Link Virtual Interface identifiers.
  /// [region] Required.
  /// [tags] Optional.
  const GetServiceLinkVirtualInterfacesResult({
    this.filters,
    required this.ids,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceLinkVirtualInterfacesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ids': ids,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetServiceLinkVirtualInterfacesResult.fromMap(Map<String, dynamic> map) {
    return GetServiceLinkVirtualInterfacesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceLinkVirtualInterfacesFilter>(guardedValue, (value) => GetServiceLinkVirtualInterfacesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
