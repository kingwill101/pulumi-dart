// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interfaces_filter.dart';

/// Result data returned by getNetworkInterfaces.
class GetNetworkInterfacesResult {
  final List<GetNetworkInterfacesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of all the network interface ids found.
  final List<String>? ids;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetNetworkInterfacesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the network interface ids found.
  /// [region] Optional.
  /// [tags] Optional.
  const GetNetworkInterfacesResult({
    this.filters,
    this.id,
    this.ids,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInterfacesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetNetworkInterfacesResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInterfacesFilter>(guardedValue, (value) => GetNetworkInterfacesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
