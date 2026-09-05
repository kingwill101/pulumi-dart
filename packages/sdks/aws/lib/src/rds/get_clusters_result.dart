// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_filter.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  /// Set of cluster ARNs of the matched RDS clusters.
  final List<String>? clusterArns;
  /// Set of ARNs of cluster identifiers of the matched RDS clusters.
  final List<String>? clusterIdentifiers;
  final List<GetClustersFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetClustersResult].
  /// [clusterArns] Set of cluster ARNs of the matched RDS clusters.
  /// [clusterIdentifiers] Set of ARNs of cluster identifiers of the matched RDS clusters.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetClustersResult({
    this.clusterArns,
    this.clusterIdentifiers,
    this.filters,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArns': ?clusterArns,
      'clusterIdentifiers': ?clusterIdentifiers,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClustersFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterArns: (() { final guardedValue = map['clusterArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      clusterIdentifiers: (() { final guardedValue = map['clusterIdentifiers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClustersFilter>(guardedValue, (value) => GetClustersFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
